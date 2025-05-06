n = [-3:3];

x = [2,4,-3,1,-5,4,7];

[x11,n11] = sigshift(x,n,3);
[x12,n12] = sigshift(x,n,-4);
[x13,n13] = sigshift(x,n,0);

[x1,n1] = sigadd(2*x11,n11, 3*x12,n12);
[x2,n2] = sigadd(x1,n1,-x13,n13);

stem(n2,x2); title("Questão 1"); xlabel("n"); ylabel("x[n]");
axis([-3,3,-25,25]);
