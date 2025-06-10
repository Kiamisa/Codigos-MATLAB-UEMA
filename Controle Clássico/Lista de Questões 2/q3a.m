clear all; close all; clc;

K = 1;
num = K * conv([1 2], [1 6]); 
den = [1 8 25];
%Função simbólica: 
%K*(s+2)*(s+6)/(s^2 + 8s + 25)

G = tf(num, den);

figure;
rlocus(G);
title('Lugar geométrico das raízes')
legend('G');
grid;