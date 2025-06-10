clear all; close all; clc;

K = 1;
num = K * [1 0 4]; 
den = [1 0 1];
%Função simbólica: 
%K*(s^2 + 4) /(s^2 + 1)

G = tf(num, den);
figure;
rlocus(G);
title('Lugar geométrico das raízes')
legend('G');
grid;