n = -10:10;

x = 0;
for k = -5:5
y = (exp(-abs(k))) * impseq(2*k, -10,10);
x = x + y;
end

stem(n,x); xlabel("n"); ylabel("x[n]"); title("Questão 2");
axis([-10,10,0,1]);