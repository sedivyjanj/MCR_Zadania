g=tf([-15000 15000],[14 1 0],'ioDelay',1)%zatial bez D
gz=c2d(g,1)%perioda vzorkovania 

% a0-a2, b0-b3 z nasej fun
b0=0;b1=0;b2=-510.9;b3=1545;a0=0;a1=-1.9311;a2=0.9311;

%ziadane poly
a1zs=-1.8
a2zs=-2.5
a3zs=-2.3
a4zs=-3.6

a1z=exp(a1zs)
a2z=exp(a2zs)
a3z=exp(a3zs)
a4z=exp(a4zs)

A=[0 0 1 0;
    b2 0 a1 1;
    b3 b2 a2 a1;
    0 b3 0 a2]
B=[a1z-a1;
    a2z-a2;
    a3z;
    a4z]

X=A\B

q0=X(1)
q1=X(2)
p1=X(3)
p2=X(4)

Q=[q0 q1]
P=[1 -p1 -p2]
P1=[1 p1 p2]

sim('simulink1.slx');
figure
plot(Y);
title('Y');
xlabel('Time');
ylabel('Value');

figure
plot(U);
title('U');
xlabel('Time');
ylabel('Value');

figure
plot(E);
title('E');
xlabel('Time');
ylabel('Value');

figure
hold on
plot(Y)
plot(U)
plot(E)
title('Y,U,E');
xlabel('Time');
ylabel('Value');
legend('Y','U','E');


%Overenie stability URO:
O1=p1+a1
a1z

O2=q0*b2+p2+p1*a1+a2
a2z

O3=q0*b3+q1*b2+p2*a1+p1*a2
a3z

O4=q1*b3+p2*a2
a4z