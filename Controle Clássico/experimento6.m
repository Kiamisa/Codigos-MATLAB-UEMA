clear; clc; close all;

k = 1;
wn = 10;
zeta1 = 0.5;
zeta2 = 1;
zeta3 = 0.1;
axis = [0 2 -2 2];
num = k*wn^2;
den1 = [1 2*zeta1*wn wn^2];
den2 = [1 2*zeta2*wn wn^2];
den3 = [1 2*zeta3*wn wn^2];
G1 = tf(num, den1);
G2 = tf(num, den2);
G3 = tf(num, den3);

figure;
bode(G1, G2, G3)
grid
hold on;
figure
impulse(G1, G2, G3)
grid
hold on;
figure
step(G1, G2, G3)
grid