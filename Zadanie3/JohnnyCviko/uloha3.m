%%%forward
Gs=tf([15000],[14 1 0]);
forward=tf([15000],[14 -27 13],'ioDelay',1);
figure
step(forward)
%%%%tustin
tustin=c2d(Gs,1,'tustin')
tustin=tf([256 517.2 258.6],[1 -1.9311 0.931],'ioDelay',1);
figure
step(tustin)
%%%backward
backward=tf([15000 0 0],[15 29 14],'ioDelay',1);
figure
step(backward)