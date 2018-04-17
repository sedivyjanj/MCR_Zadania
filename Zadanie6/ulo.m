g=tf([-15000 15000],[14 1 0])%zatial bez D
gz=c2d(g,4)%perioda vzorkovania 

[B, A] = tfdata(gz, 'v')
q0=1/sum(B)
q1=A(2)*q0
q2=A(3)*q0

p1=B(2)*q0
p2=B(3)*q0
Q=[q0 q1 q2]
P=[1 -p1 -p2]
P1=[1 0 -p1 -p2]
sum(P)
sum(Q)