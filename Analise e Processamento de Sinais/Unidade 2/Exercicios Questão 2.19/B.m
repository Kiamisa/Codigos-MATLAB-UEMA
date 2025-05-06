n = [0:100];
b = [1,2,1];
a = [1,-0.5,0.25];

x = impz(b,a,n);

h = filter(b,a,x)

sum(abs(x));
z = roots(a);
magz = abs(z)