n = 0:20;

x = exp(0.1*n) .* (stepseq(-20,0,20)-stepseq(10,0,20));

stem(n,x); xlabel("n"); ylabel("x[n]"); title("Questão 4");
axis([0,20,0,2.5]);