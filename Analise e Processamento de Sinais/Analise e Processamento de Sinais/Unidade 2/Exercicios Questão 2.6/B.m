n = -10:10;
x = exp(0.1*n) .* ((stepseq(-5,-10,10)-stepseq(10,-10,10)));

[xe,xo,m] = evenodd(x,n);

subplot(2,2,1); stem(n,x); title("Pulso Rectangular");
xlabel("n"); ylabel("x[n]"); axis([-10,10,0,2.5]);
subplot(2,2,2); stem(m,xe); title("Parte Par");
xlabel("n"); ylabel("xe(n)"); axis([-10,10,0,2]);
subplot(2,2,3); stem(m,xo); title("Parte Impar");
xlabel("n"); ylabel("xo(n)"); axis([-10,10,-1.5,1.5]);