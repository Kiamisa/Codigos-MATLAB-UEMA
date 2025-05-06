n = [0:100];

x = exp(0.01*n).*sin(0.1*pi*n);

stem(n,x); xlabel("n"); ylabel("x[n]"); title("Questão 8");
axis([0,100,-3,3]);
