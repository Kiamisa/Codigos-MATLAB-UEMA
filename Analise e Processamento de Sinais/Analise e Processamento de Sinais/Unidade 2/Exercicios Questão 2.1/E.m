n = -200:200;

x = 5*cos(0.49*pi*n) + cos(0.51*pi*n)

stem(n,x); xlabel("n"); ylabel("x[n]"); title("Questão 5");
axis([-200,200,-6,6]);
