clear; close all; clc;


K = 5;
K1 = 10;

%simbolico
%G_sym = K*(s+3)/ (s^4 + 7*s^3 + 14*s^2 + (8+K)*s + 3*K);

num = K * [1 3];
num1 = K1 * [1 3];
den = [1 7 14 (8+K) 3*K];
den1 = [1 7 14 (8+K1) 3*K1];


G = tf(num, den);
G1 = tf(num1, den1);

p = pole(G);
p1 = pole(G1);

figure;
step(G)
hold on;
step(G1)
grid;

figure;
rlocus(G);
hold on;
rlocus(G1);
grid;

figure;
pzmap(G);
hold on;
pzmap(G1);
grid