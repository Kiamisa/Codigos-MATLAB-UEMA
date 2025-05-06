n = -20:20;

x = cos(0.2*pi*n + (pi/4));

[xe,xo,m] = evenodd(x,n);

subplot(2,2,1); stem(n,x); title("Pulso Rectangular");
xlabel("n"); ylabel("x[n]"); axis([-20,20,-1.5,1.5]);
subplot(2,2,2); stem(m,xe); title("Parte Par");
xlabel("n"); ylabel("xe(n)"); axis([-20,20,-1.5,1.5]);
subplot(2,2,3); stem(m,xo); title("Parte Impar");
xlabel("n"); ylabel("xo(n)"); axis([-20,20,-1.5,1,5]);