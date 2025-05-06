% Configuração do tempo
t = 0:0.01:20; % Vetor de tempo de 0 a 20 com passo 0.01

% Criação do impulso aproximado em t=10
impulso = zeros(size(t));
impulso(t == 10) = 1; % Usamos 1 para representar a área do impulso

% Plotagem
figure;
stem(t, impulso, 'LineWidth', 2, 'MarkerFaceColor', 'blue', 'MarkerSize', 8);
title('f(t+5) \cdot U_0(t - 10) = \delta(t - 10)');
xlabel('Tempo (t)');
ylabel('Amplitude');
grid on;
xlim([0 20]);
ylim([0 1.2]);