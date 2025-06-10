clc;
clear;
close all;


num = [1 0];           
den = [1 0 1];         


GH = tf(num, den);


figure;
rlocus(GH);
title('Lugar Geometrico das Raizes');
grid on;
