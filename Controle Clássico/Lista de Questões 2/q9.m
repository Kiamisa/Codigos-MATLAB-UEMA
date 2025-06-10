clc;
clear;

z = [1 2 3];     
p = [-3 -1 0];   

sys = zpk(z, p, 1);

figure;
rlocus(sys);
title('Lugar Geometrico das Raizes');
xlabel('Re');
ylabel('Im');
grid on;
axis equal;
