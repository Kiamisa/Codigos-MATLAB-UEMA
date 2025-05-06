% Função de Transferência

num1 = 1;
dem1 = [1 1 2 3 6];
G1 = tf(num1,dem1);

% 1. Lugar das raízes
figure;
rlocus(G1)
legend('G1')
grid;
