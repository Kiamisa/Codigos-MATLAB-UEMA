n = [-3:3];
x = [2,4,-3,1,-5,4,7];
n1 = [-10:10];

i = 2*exp(0.5*n1);
j = cos(0.1*pi*n1);

[x11,n11] = sigmult(i,n1,x,n)

[x12,n12] = sigshift(x,n,-2);

[x22,n22] = sigmult(j,n1,x11,n11)

[x1,n1] = sigadd(x11,n11,x22,n22);

stem(n1,x1); title("Questão 1"); xlabel("n"); ylabel("x[n]"); 
axis([-3,3,-40,100]);


