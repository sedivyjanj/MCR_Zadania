g=tf([-15000 15000],[14 1 0],'ioDelay',1)
gz=c2d(g,1)%perioda vzorkovania 

gzNew=c2d(g,3);%nova, zvysena perioda

[B, A] = tfdata(gz, 'v')
q0=1/sum(B)
q1=A(2)*q0
q2=A(3)*q0

[BNew, ANew] = tfdata(gzNew, 'v')
q0New=1/sum(BNew)
q1New=ANew(2)*q0New
q2New=ANew(3)*q0New

p2=B(2)*q0
p3=B(3)*q0
Q=[q0 q1 q2]
P=[1 -p2 -p2]
P1=[1 0 -p2 -p3]
sum(P)
sum(Q)

p2New=BNew(2)*q0New
p3New=BNew(3)*q0New
QNew=[q0New q1New q2New]
PNew=[1 -p2New -p2New]
P1New=[1 0 -p2New -p3New]
sum(PNew)
sum(QNew)


sim('simulink6.slx');
figure
plot(Y);
hold on;
plot(Y1)
title('Y');
xlabel('Time');
ylabel('Hodnota ustalenia');
legend('Sample time 1','Sample time 3')

figure
plot(U);
hold on;
plot(U1);
title('U');
xlabel('Time');
ylabel('Hodnota ustalenia');
legend('Sample time 1','Sample time 3')

figure
plot(E);
hold on;
plot(E1);
title('E');
xlabel('Time');
ylabel('Hodnota ustalenia');
legend('Sample time 1','Sample time 3')
