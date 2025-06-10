clear all; close all; clc;

% Sistema 1
K = 1
;
num = K * conv([1 2], [1 1]);        
den = conv([1 -2], [1 -1]);         
G = tf(num, den);                    

% Sistema 2
den1 = [1 -2 2];                     
G1 = tf(num, den1);                

% Plot
figure;

subplot(2,1,1);
rlocus(G);
title('Lugar Geometrico das Raizes - Sistema 1');
legend('G');
grid on;

subplot(2,1,2);
rlocus(G1);
title('Lugar Geometrico das Raizes - Sistema 2');
legend('G_1');
grid on;
