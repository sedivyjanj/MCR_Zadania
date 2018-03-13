Gs= tf([15000],[14 1 0],'ioDelay',1);
%Gr= tf([D P],[1]);

%najlepsia Tune
Gr= tf([0.000412 2.695*10^-5],[1]);
G= Gs*Gr

figure
nyquist(G);

figure
bode(G);