n = [-3:3];

x = [2,4,-3,1,-5,4,7];

[~,~] = sigfold(x,n);
[x11,n11] = sigshift(x,n,4);
[x12,n12] = sigshift(x,n,-5);
[x13,n13] = sigshift(x,n,0);

[x1,n1] = sigadd(4*x11,n11, 5*x12,n12);
[x2,n2] = sigadd(x1,n1,2*x13,n13);

stem(n2,x2); title("Questão 2"); xlabel("n"); ylabel("x[n]");
axis([-3,3,-10,50]);