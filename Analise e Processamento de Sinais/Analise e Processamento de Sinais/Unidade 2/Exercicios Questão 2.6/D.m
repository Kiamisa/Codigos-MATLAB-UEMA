n = [0:100];

x = exp(-0.05*n).*sin(0.1*pi*n+(n/3));

subplot(2,2,1); stem(n,x); title("Pulso Rectangular");
xlabel("n"); ylabel("x[n]"); axis([0,20,-1,1]);
subplot(2,2,2); stem(m,xe); title("Parte Par");
xlabel("n"); ylabel("xe(n)"); axis([0,20,-1,1]);
subplot(2,2,3); stem(m,xo); title("Parte Impar");
xlabel("n"); ylabel("xo(n)"); axis([0,20,-1,1]);