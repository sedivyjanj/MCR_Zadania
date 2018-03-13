clear;
clc;
sim('model.slx');
figure
plot(E2);
hold on;
plot(U2);
hold on;
plot(Y2);
title("Najlepsi navrh PD");
xlabel("time");
ylabel("hodnoty");
legend('E(t)','U(t)','Y(t)');
grid on;

figure %bez naslin, lebo dava hodnoty az 10^8
plot(Y1);
hold on;
plot(Y2,'--');
grid on
title("Vsetky reg. v jednom grafe");
xlabel("time");
ylabel("hodnoty");
legend('Butterworth','Graham');

figure
plot(Y3)
title("Naslin");
xlabel("time");
ylabel("hodnoty");