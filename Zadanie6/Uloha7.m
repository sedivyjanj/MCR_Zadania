g=tf([-15000 15000],[14 1 0])%zatial bez D
gz=c2d(g,1)%perioda vzorkovania 

[B, A] = tfdata(gz, 'v')
q0=1/sum(B)
q0=q0*0.75
q1=(A(2)-1)*q0+1/sum(B)
q2=(A(3)-A(2))*q0+A(2)/sum(B)
q3=(A(3))*(-q0+(1/sum(B)))

p1=B(2)*q0
p2=(B(3)-B(2))*q0+B(2)/sum(B)
p3=(-B(3))*(q0-(1/sum(B)))
Q=[q0 q1 q2 q3]
P=[1 -p2 -p2]
P1=[1 0 -p1 -p2 -p3]
sum(P1)
sum(Q)

sim('uloha11_simulink.slx')
%sim('uloha_simulink.slx');
figure
plot(YNew);
title('Y');
xlabel('Time');
ylabel('Amplitude');

figure
plot(UNew);
title('U');
xlabel('Time');
ylabel('Amplitude');

figure
plot(ENew);
title('E');
xlabel('Time');
ylabel('Amplitude');