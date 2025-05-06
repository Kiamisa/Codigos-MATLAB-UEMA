% Cálculo de fases, amplitude e período de uma onda sísmica
fprintf('%s\n', 'CÁLCULO DE FASES, AMPLITUDES E PERÍODOS');

% Carregar arquivo com os dados
load sismo.txt; % Certifique-se de que "sismo.txt" está no diretório correto
t = sismo(:,1); % Vetor de tempo
y = sismo(:,2); % Vetor da onda sísmica

N = length(y); % Tamanho do vetor
Fs = 20; % Frequência de amostragem
T = 1/Fs; % Intervalo de amostragem

% Calcular amplitude máxima
[A, I] = max(abs(y)); % A: Amplitude, I: Índice do máximo

% Envelope usando transformada de Hilbert
y1 = hilbert(y);
y2 = sqrt(y.^2 + abs(y1).^2);
A2 = max(y2);
y2 = y2 / A2; % Normalizar o envelope

comp = mean(y2(1:60));

% Encontrar o tempo da fase P
tp = 0; % Inicializar tp
Ip = []; % Inicializar Ip como vazio

for n = 10:I
    if y2(n) > 5.9 * comp
        for k = 1:n
            if y2(n-k) - y2(n-k-1) < 0 && y2(n-k) < 0.015
                Ip = n - k; % Atribuir Ip
                tp = Ip * T; % Calcular tempo P
                break;
            end
        end
        break;
    end
end

% Verificar se Ip foi encontrado
if isempty(Ip)
    warning('Ip não foi definido. Ajustando para valor padrão.');
    Ip = 1; % Define um valor padrão para evitar erros
    tp = Ip * T;
end

fprintf('%s%8.6f\n', 'Tempo P = ', tp);

% Encontrar o tempo da fase S
Ix = round((Ip + I) / 2); % Agora Ip está garantido como definido
ts = 0;

for n = Ix:I
    if y2(n) > 0.45
        for k = Ix:n
            if (y2(n+Ix-k) - y2(n+Ix-k-1) < 0) && y2(n+Ix-k) < 0.09
                Is = n + Ix - k;
                ts = Is * T;
                break;
            end
        end
        break;
    end
end

fprintf('%s%8.6f\n', 'Tempo S = ', ts);

% Plotar as curvas
subplot(2,2,1), plot(t, y), grid on;
title('Gráfica da Sinal Sísmica');
fprintf('%s%8.6f\n', 'Amplitude = ', A);

% Espectro de frequência
default_N = N; % Para reutilizar valor original de N
Y = fft(y, default_N);
Pyy = abs(Y).^2 / default_N;
f = (1/T) * (0:default_N/2) / default_N;
subplot(2,2,3), plot(f, Pyy(1:default_N/2+1));
axis([0 10 0 max(Pyy)]), grid on;
title('Espectro de Frequências da Sinal');
xlabel('Frequência (Hz)');

% Zoom no P-S
N = 128;
y_zoom = y(max(1,I-N/4):min(length(y),I+N/4)); % Ajustar limites para evitar erros
subplot(2,2,2), plot(t(max(1,I-N/4):min(length(y),I+N/4)), y_zoom), grid on;
title('Zoom na Transição P-S');

Y_zoom = fft(y_zoom, N);
Pyy_zoom = abs(Y_zoom).^2 / N;
f_zoom = (1/T) * (0:N/2) / N;
delta_f = f_zoom(2) - f_zoom(1);
subplot(2,2,4), plot(f_zoom, Pyy_zoom(1:N/2+1));
axis([0 10 0 max(Pyy_zoom)]), grid on;
title('Espectro de Frequências (Zoom)');
xlabel('Frequência (Hz)');

% Calcular período
[amp_espectro, J] = max(abs(Pyy_zoom));
fs = delta_f * (J - 1);
periodo = 1 / fs;
fprintf('%s%8.6f\n', 'Período = ', periodo);

% Calcular duração
prom_f = sum(abs(y(default_N-20:default_N))) / 21;
tf = 0;
for k = default_N:-1:I
    if y(k) > 4 * prom_f
        tf = k * T;
        break;
    end
end
dur = round(tf - tp);
fprintf('%s%7.2f\n', 'Duração = ', dur);