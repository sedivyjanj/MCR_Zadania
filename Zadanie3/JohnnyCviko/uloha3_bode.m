g=tf([15000],[14 1 0])
%%%forward
Gs=tf([15000],[14 1 0]);
forward=tf([15000],[14 -27 13],1);
figure
bode(forward)
hold on
bode(g)
title('Bode: forward')
%%%%tustin
tustin=c2d(Gs,1,'tustin')
tustin=tf([15000 30000 15000],[58 -112 54],1);
figure
bode(tustin)
hold on
bode(g)
title('Bode: Tustin');
%%%backward
backward=tf([15000 0 0],[15 29 14],1);
figure
bode(backward)
%nasa fun
g=tf([15000],[14 1 0])
gz = c2d(g, 1)
gz = tf([523.2 510.9],[1 -1.931 0.9311],1);
hold on 
bode(g)
title('Bode: Backward')
tustin=c2d(Gs,1,'tustin')