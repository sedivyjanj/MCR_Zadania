[r,p,k]=residue([5],[6 5 1 0]);

D1 = exp(-0.5);
D2 = exp(-1/3);

b1 = -15*D2 + 10*D1 +5
b0 = 10*D2-15*D1+5*D1*D2
a1 = D1+D2
a0 = D1*D2

[B,A] = c2dm(5,conv([2 1],[3 1]),1,'zoh')
