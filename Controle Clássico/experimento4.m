clc; clear; close all;

k = 1;
zeta = 0.5;
wn_values = [0.5 1 1.5 2 2.5 3];

for i = 1:length(wn_values)
    wn = wn_values(i);
    disp(['Para wn sendo: ', num2str(wn)]);
    
    num = k * wn^2;
    den = [1 2*zeta*wn wn^2];
    sys = tf(num, den);
    
    figure;
    step(sys);
    legend(['Wn = ', num2str(wn)]);
    title(['Resposta ao degrau para Wn = ', num2str(wn)]);
    xlabel('Tempo (s)');
    ylabel('Saída');
    grid on;
end
