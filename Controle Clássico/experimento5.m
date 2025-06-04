clear all; close all; clc;

k = 1;
Wn = 10;
zeta = 0.5;

num = k * Wn^2;
den = [1 2*zeta*Wn Wn^2]


G = tf(num, den)

figure;
bode(G);                                                 
grid on;







