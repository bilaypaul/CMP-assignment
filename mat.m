E1 = 10;
E2 = 8;
n = 50;
t1 = 0.5;
t2 = 0.4;
t3 = 0.4;
t4 = 0.5;

diag = [E1,1;1,E2];
offdiag = [t1,t2;t3,t4];

gen = zeros(1,n);
gen(2) = 1;

m1 = eye(n);
m2 = toeplitz(gen);

n1 = kron(m1,diag);
n2 = kron(m2,offdiag);

n = n1 + n2;

[V,D] = eig(n);







