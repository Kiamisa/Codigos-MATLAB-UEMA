clc; clear all; close all; 


K = 1;
num = K * [1 1];        

den1 = [1 2];      
den2 = [1 3];      
den3 = [1 4];       

den = conv([1 0],conv(conv(den1, den2), den3));

G = tf(num, den);                    


figure;
rlocus(G);


title('Lugar Geometrico das Raizes');
legend('G');
grid on;