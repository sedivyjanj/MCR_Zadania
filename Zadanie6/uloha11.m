%spustit najprv ulo.m, potom uloha7.m , potom tento script

figure
plot(Y);
hold on;
plot(YNew);
title('Y');
xlabel('Time');
ylabel('Amplitude');
legend('Bez ohranicenia','S ohranicenim');

figure
plot(U);
hold on;
plot(UNew);
title('U');
xlabel('Time');
ylabel('Amplitude');
legend('Bez ohranicenia','S ohranicenim');

figure
plot(E);
hold on;
plot(ENew);
title('E');
xlabel('Time');
ylabel('Amplitude');
legend('Bez ohranicenia','S ohranicenim');