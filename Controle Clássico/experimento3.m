clear; clc; close all;

num1 = 10;
dem1 = [1 2 10];
G1 = tf(num1,dem1);
num2 = 5;
dem2 = [1 5];
G2 = tf(num2,dem2);

% Conexão em série
[num_s, dem_s] = series(num1, dem1, num2, dem2);
printsys(num_s,dem_s)
% Conexão em paralelo
[num_p, dem_p] = parallel(num1, dem1, num2, dem2);
printsys(num_p,dem_p)
% Conexão em malha fechada
[num_f, dem_f] = feedback(num1, dem1, num2, dem2);


num11 = 50;
dem11 = [1 7 20 50];

G11 = tf(num11,dem11);

num12 = [5 20 100];
dem12 = [1 7 20 50];

G12 = tf(num12, dem12);

figure;
impulse(G11);
hold on;
impulse(G12);
legend('G11','G12')
grid;

figure;
p1 = pole(G11);
rlocus(G11)
legend('G11')
grid;

figure;
p2 = pole(G12);
rlocus(G12)
legend('G12')
grid;