% Espectro de frequência de f(t) = U0(t)
clear; clc; close all;

% Eixo de frequência
w = linspace(-50, 50, 1000);  % rad/s

% Magnitude da transformada de Fourier de U0(t)
% F(ω) = π·δ(ω) + 1/(jω) => |F(ω)| = π·δ(ω) + 1/|ω|
epsilon = 1e-6;  % Para evitar divisão por zero
magnitude = 1 ./ (abs(w) + epsilon);  % adicionamos epsilon para suavizar no zero

% Acrescentando impulso (delta de Dirac) simbolicamente
impulse_mag = 20; % valor arbitrário alto para ilustrar o impulso
delta = zeros(size(w));
[~, idx0] = min(abs(w));  % encontra o índice onde w ≈ 0
delta(idx0) = impulse_mag;

% Soma do espectro com delta
spectrum = magnitude + delta;

% Plot
figure;
plot(w, spectrum, 'b', 'LineWidth', 1.5);
hold on;
stem(w(idx0), delta(idx0), 'r', 'LineWidth', 2); % delta em vermelho
title('Espectro de Frequência de f(t) = U₀(t)');
xlabel('\omega (rad/s)');
ylabel('|F(\omega)|');
grid on;
legend('|1/j\omega|', '\pi\delta(\omega)', 'Location', 'northeast');
