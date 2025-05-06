% Frequência
omega = linspace(-50, 50, 1000);

% Transformada de Fourier de f(t) = 10 * u(t) (sem o delta de Dirac)
F_w = 10 ./ (1j * omega);

% Módulo
magnitude = abs(F_w);

% Plot
figure;
plot(omega, magnitude, 'b', 'LineWidth', 1.5);
xlabel('\omega');
ylabel('|F(\omega)|');
title('Módulo da Transformada de Fourier de 10u(t)');
grid on;
