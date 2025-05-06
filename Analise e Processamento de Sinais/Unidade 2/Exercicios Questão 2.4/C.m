n = [-3:3];

x = [2,4,-3,1,-5,4,7];

[x11,n11] = sigshift(x,n,-3);
[x12,n12] = sigshift(x,n,2);

[x1,n1] = sigmult(x11,n11,x12,n12);

[~,~] = sigfold(x,n);
[x21,n21] = sigshift(x,n,-1);
[x22,n22] = sigshift(x,n,-1);

[x2,n2] = sigmult(x21,n21,x22,n22);

[x3,n3] = sigadd(x1,n1,x2,n2);

stem(n3,x3); title("Questão 3"); xlabel("n"); ylabel("x[n]");
axis([-3,3,0,60]);
