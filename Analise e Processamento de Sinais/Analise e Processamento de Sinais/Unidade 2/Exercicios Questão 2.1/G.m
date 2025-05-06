n = -200:200;

x = exp(-0.05*n) .* sin(0.1*pi*n + pi/3)

stem(n,x); xlabel("n"); ylabel("x[n]"); title("Questão 7");
axis([-200,200,-20000,20000]);
