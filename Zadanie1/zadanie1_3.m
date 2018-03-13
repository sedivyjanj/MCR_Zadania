Gs= tf([-15000 15000],[14 1 0],'ioDelay',1);
Gr= tf([0.000322 6.05*(10^(-5)) 0],[1 0]);
G= Gs*Gr;

figure
nyquist(G);

figure
bode(G);