clear all; close all; clc;


K = 1;
num = K * [1 3];        

% Denominador: (s^2 + 2)(s - 2)(s + 5)
den1 = [1 0 2];      
den2 = [1 -2];      
den3 = [1 5];       

den = conv(conv(den1, den2), den3);


G = tf(num, den);                    


figure;
rlocus(G);

title('Lugar Geométrico das Raízes');
legend('G');
grid on;
