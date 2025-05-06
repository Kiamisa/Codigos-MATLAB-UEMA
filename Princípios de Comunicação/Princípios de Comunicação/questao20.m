% Plot da função degrau unitário U0(t)
clear; clc; close all;

% Eixo do tempo
t = -5:0.01:5;

% Definição da função degrau unitário
U0 = double(t >= 0);  % 0 para t < 0, 1 para t >= 0

% Plot
figure;
plot(t, U0, 'b', 'LineWidth', 2);
ylim([-0.2 1.2]);
xline(0, '--k');  % linha vertical em t=0
title('Função Degrau Unitário U₀(t)');
xlabel('t');
ylabel('U₀(t)');
grid on;
