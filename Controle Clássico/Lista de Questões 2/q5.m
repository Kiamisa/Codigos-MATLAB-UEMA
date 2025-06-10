clear all; close all; clc;

K1 = 1;
K2 = 2;

% Numeradores: -K1*(s^2 + 1) e -K2*(s^2 + 1)
num1 = -K1 * [1 0 1];
num2 = -K2 * [1 0 1];

den = [1 2 2];

G1 = tf(num1, den);
G2 = tf(num2, den);

figure;

rlocus(G1, G2 );
title('Lugar das raizes');
grid on;
