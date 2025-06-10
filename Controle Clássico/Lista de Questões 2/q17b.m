clc; clear all; close all; 


K = 1;
num = K * conv([1 -1], [1 -2]);        

den = conv([1 1],[1 2]);


G = tf(num, den);                    


figure;
rlocus(G);


title('Lugar Geométrico das Raízes');
legend('G');
grid on;