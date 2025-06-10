clc;
clear;
close all;

K = 1;
alpha = [0.1:1]
num = K*[1 alpha];           
den1 = [1 1];         
den2 = [1 2]; 
den3 = [1 3]; 
den4 = [1 4]; 

den = conv(den4,conv(conv(den1, den2),den3));
G = tf(num, den);


figure;
rlocus(G);
title('Lugar Geometrico das Raizes');
grid on;
