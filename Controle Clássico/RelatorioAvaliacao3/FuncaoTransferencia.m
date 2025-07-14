% Definindo a função de transferência G4(s)
num = 4;
den = conv([1 1], conv([1 2], [1 2 8])); % (s+1)(s+2)(s^2 + 2s + 8)
G4 = tf(num, den);

figure;
step(G4);
grid on;
title('Resposta ao Degrau de G_4(s) em Malha Aberta');
xlabel('Tempo (s)');
ylabel('Amplitude');