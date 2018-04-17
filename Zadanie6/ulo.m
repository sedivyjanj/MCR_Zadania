g=tf([-15000 15000],[14 1 0],'ioDelay',1)%zatial bez D
gz=c2d(g,1)%perioda vzorkovania 

[B, A] = tfdata(gz, 'v')
q0=1/sum(B)
q1=A(2)*q0
q2=A(3)*q0

p2=B(2)*q0
p3=B(3)*q0
Q=[q0 q1 q2]
P=[1 -p2 -p2]
P1=[1 0 -p2 -p3]
sum(P)
sum(Q)

sim('uloha_simulink.slx');
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