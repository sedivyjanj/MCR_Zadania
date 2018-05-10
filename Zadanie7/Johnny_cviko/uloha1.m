g=tf([-15000 15000],[14 1 0],'ioDelay',1)%zatial bez D
gz=c2d(g,1)%perioda vzorkovania 
[Bz,Az]=c2dm([-15000 15000],[14 1 0],1)
Bz = [0 Bz]


% a0-a2, b0-b3 z nasej fun
b0=0;b1=0;b2=-510.9;b3=1545;a0=0;a1=-1.9311;a2=0.9311;

%ziadane poly
% a1zs=-1.8
% a2zs=-2.5
% a3zs=-2.3
% a4zs=-3.6

% a1zs = -0.5
% a2zs = -0.7
% a3zs = -0.4
% a4zs = -0.6

a1zs = -0.5+0.1i
a2zs = -0.5-0.1i
a3zs = -0.4
a4zs = -0.6

a1z=exp(a1zs)
a2z=exp(a2zs)
a3z=exp(a3zs)
a4z=exp(a4zs)

%vypocitanie alfa
polynom = conv((conv([1 -a1z],[1 -a2z])),(conv([1 -a3z],[1 -a4z])))
alfa1 = polynom(2)
alfa2 = polynom(3)
alfa3 = polynom(4)
alfa4 = polynom(5)

A=[0 0 1 0;
    b2 0 a1 1;
    b3 b2 a2 a1;
    0 b3 0 a2]
B=[alfa1-a1;
    alfa2-a2;
    alfa3;
    alfa4]

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
alfa1

O2=q0*b2+p2+p1*a1+a2
alfa2

O3=q0*b3+q1*b2+p2*a1+p1*a2
alfa3

O4=q1*b3+p2*a2
alfa4

kontrola1 = conv(Az,P1)
kontrola2 = conv(Bz,Q)
kontrolaC = kontrola1+kontrola2
alfa1
alfa2
alfa3
alfa4



syms z;
gz=((-510.9*z^-2+1545*z^-3)/(1-1.931*z^-1+0.9311*z^-2));
grz=(q0+q1*z^-1)/(1+p1*z^-1+p2*z^-2);
limitaY = vpa(limit(((gz*grz)/(1+gz*grz)),z,1),4)
limitaU = vpa(limit(((grz)/(1+gz*grz)),z,1),4)
limitaE = vpa(limit(((1)/(1+gz*grz)),z,1),4)

