% Frequência de amostragem e tempo de 1 segundo
fs = 200;  % Frequência de amostragem (200 Hz)
t = 0:5/fs:(1-1/fs);  % Vetor de tempo de 1 segundo

% Número de pontos do vetor de tempo
N = length(t);

% Construção do sinal de frequência 6 Hz
f1 = 6; 
sinal1 = 2*sin(2*pi*f1*t);  % Sinal de 6 Hz

% Gráfico do sinal de 6 Hz
subplot(3,3,1); plot(t, sinal1);
title('Sinal senoidal de 6Hz');
xlabel('Tempo(s)'); ylabel('Amplitude(V)');

% Cálculo da Transformada Rápida de Fourier (FFT)
y1 = fft(sinal1);
y1 = y1(1:floor(length(y1)/2));  % Considerando apenas a metade positiva da FFT

% Ajuste do eixo de frequência para o espectro
freq1 = (0:length(y1)-1)*(fs/N);

% Gráfico da transformada de Fourier para o sinal de 6 Hz
subplot(3,3,4); plot(freq1, abs(y1));
title('Pós transformada de Fourier - 6 Hz');
xlabel('Frequência(Hz)'); ylabel('Amplitude');

% Construção do sinal de frequência 12 Hz
f2 = 12; 
sinal2 = 2*sin(2*pi*f2*t);  % Sinal de 12 Hz

% Gráfico do sinal de 12 Hz
subplot(3,3,2); plot(t, sinal2);
title('Sinal senoidal de 12Hz');
xlabel('Tempo(s)'); ylabel('Amplitude(V)');

% Cálculo da Transformada Rápida de Fourier (FFT) para o sinal de 12 Hz
y2 = fft(sinal2);
y2 = y2(1:floor(length(y2)/2));  % Considerando apenas a metade positiva da FFT

% Ajuste do eixo de frequência para o espectro
freq2 = (0:length(y2)-1)*(fs/N);

% Gráfico da transformada de Fourier para o sinal de 12 Hz
subplot(3,3,5); plot(freq2, abs(y2));
title('Pós transformada de Fourier - 24 Hz');
xlabel('Frequência(Hz)'); ylabel('Amplitude');


% Construção do sinal de frequência 24 Hz
f3 = 24; 
sinal3 = 2*sin(2*pi*f3*t);  % Sinal de 24 Hz

% Gráfico do sinal de 24 Hz
subplot(3,3,3); plot(t, sinal3);
title('Sinal senoidal de 24Hz');
xlabel('Tempo(s)'); ylabel('Amplitude(V)');

% Cálculo da Transformada Rápida de Fourier (FFT) para o sinal de 24 Hz
y3 = fft(sinal3);
y3 = y3(1:floor(length(y3)/2));  % Considerando apenas a metade positiva da FFT

% Ajuste do eixo de frequência para o espectro
freq3 = (0:length(y3)-1)*(fs/N);

% Gráfico da transformada de Fourier para o sinal de 24 Hz
subplot(3,3,6); plot(freq3, abs(y3));
title('Pós transformada de Fourier - 24 Hz');
xlabel('Frequência(Hz)'); ylabel('Amplitude');

% Soma dos sinais
f4 = f1 + f2 + f3;
sinal4 = sinal1 + sinal2 + sinal3 * 3;

y4 = fft(sinal4);

% Ajuste do eixo de frequência para o espectro
freq4 = (0:length(y4)-1)*(fs/N);

% Soma dos sinais
subplot(3,3,7); plot(t, sinal4);
title('Soma dos sinais');
xlabel('Tempo(s)'); ylabel('Amplitude(V)');

% Gráfico da transformada de Fourier para a soma dos sinais
subplot(3,3,9); plot(freq4, abs(y4));
title('Pós transformada de Fourier - Soma dos sinais');
xlabel('Frequência(Hz)'); ylabel('Amplitude');


%sound(sinalx,fs)