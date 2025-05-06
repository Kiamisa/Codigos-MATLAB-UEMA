n = [-10:20];

x = 10*stepseq(n,-10,20) - 5*stepseq(5,-10,20) - 10*stepseq(10,-10,20) + 5*stepseq(15,-10,20);

stem(n,x); xlabel("n"); ylabel("x[n]"); title("Questão 3");
axis([-10,20,-10,10]);