clear all; close all; clc;

K = 1;
num = K; 
den1 = conv([1 1], [1 1]);
den2 = conv(den1, [1 1]);
den = conv(den2, [1 4]);
%Funcao simbolica: 
%K /((s+1)^3*(s+4))

G = tf(num, den);
figure;
rlocus(G);
title('Lugar geometrico das raizes')
legend('G');
grid;