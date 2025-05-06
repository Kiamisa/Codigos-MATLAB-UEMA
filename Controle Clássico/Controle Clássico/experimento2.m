clc;
clear;
close all;

k = 0.1;
Wn = sqrt(10);
Zeta = 0.5;

Num = k*Wn^2;
Den = [1 2*Zeta*Wn Wn^2];

G = tf(Num, Den);

figure;
rlocus(G);

