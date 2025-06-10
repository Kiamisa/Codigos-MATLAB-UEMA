clear all; close all; clc;

K = 1;
num = K * [1 0 -9]; 
den = [1 0 4];
%Funcao simbolica: 
%K*(s^2 - 9) /(s^2+4)

G = tf(num, den);
figure;
rlocus(G);
title('Lugar geometrico das raizes')
legend('G');
grid;