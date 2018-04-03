clear;
clc;
sim('uloha_simulink.slx');
%plot(U1)
%[xt,yt]=stairs(0:1:60,U1);
%plot(xt,yt)
figure
plot(Y1)
title('Graf y(t)');
xlabel("time");
ylabel("hodnoty");
grid on;
figure
plot(U1)
title('Graf u(t)');
xlabel("time");
ylabel("hodnoty");
grid on;