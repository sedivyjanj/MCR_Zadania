clear;
clc;
sim('uloha_8.slx');

figure
plot(Y1)
hold on
plot(Y)
title('Graf y(t)');
xlabel("time");
ylabel("hodnoty");
grid on;
legend('Diskretny filter','PID blokom');