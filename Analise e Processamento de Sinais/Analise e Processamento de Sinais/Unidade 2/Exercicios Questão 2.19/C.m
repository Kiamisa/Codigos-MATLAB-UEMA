n = [0:17];
b = [1,2,1];
a = [1,-0.5,0.25];
x = (5+(3*cos(0.2*pi*n))+(4*sin(0.6*pi*n))).*stepseq(0,0,17);

y = filter(b,a,x);

stem(n,y); 
title("Output sequence")
xlabel("n"); 
ylabel("y(n)");


