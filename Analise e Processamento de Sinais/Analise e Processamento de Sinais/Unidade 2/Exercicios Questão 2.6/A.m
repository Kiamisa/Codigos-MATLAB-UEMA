n = 0:9;

x = 0:9;

[xe,xo,m] = evenodd(x,n);

subplot(2,2,1); stem(n,x); title("Pulso Rectangular");
xlabel("n"); ylabel("x[n]"); axis([0,9,0,10]);
subplot(2,2,2); stem(m,xe); title("Parte Par");
xlabel("n"); ylabel("xe(n)"); axis([0,9,0,10]);
subplot(2,2,3); stem(m,xo); title("Parte Impar");
xlabel("n"); ylabel("xo(n)"); axis([0,9,0,10]);