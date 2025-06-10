clear all; close all; clc;

K = 1;
num = K * [1 0 1]; 
den = [1 0 0];
%Funcao simbolica: 
%K*(s^2 + 1) /(s^2)

G = tf(num, den);
figure;
rlocus(G);
title('Lugar geometrico das raizes')
legend('G');
grid;