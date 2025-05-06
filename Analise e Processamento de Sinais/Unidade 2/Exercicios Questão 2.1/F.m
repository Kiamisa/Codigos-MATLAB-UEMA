n = -200:200;

x = 52*(sin((0.01*pi*n)+pi/3))

stem(n,x); xlabel("n"); ylabel("x[n]"); title("Questão 6");
axis([-200,200,-60,60]);