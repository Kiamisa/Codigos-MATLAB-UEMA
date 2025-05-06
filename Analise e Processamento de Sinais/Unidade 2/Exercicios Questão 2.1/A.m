n = -5:15;

x1=3*impseq(-2,-5,15);

x2=2*impseq(3,-5,15);

x3=5*impseq(7,-5,15);

x = x1+x2+x3;

stem(n,x); xlabel("n"); ylabel("x[n]"); title("Questão 1"); 
axis([-5,15,0,10]);