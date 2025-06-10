clc;
clear;
close all;

K = 1;
num = K* [1 -2 2];           
den1 = [1 2];         
den2 = [1 4]; 
den3 = [1 5]; 
den4 = [1 6]; 

den = conv(den4,conv(conv(den1, den2),den3))
G = tf(num, den);


figure;
rlocus(G);
title('Lugar Geometrico das Raizes');
grid on;
