%%%forward
Gs=tf([15000],[14 1 0]);
forward=tf([15000],[14 -27 13]);
figure
step(forward)
title('Step Response Forward');
%%%%tustin
tustin=c2d(Gs,1,'tustin')
tustin=tf([256 517.2 258.6],[1 -1.9311 0.931]);
figure
step(tustin)
title('Step Response Tustin');
%%%backward
backward=tf([15000 0 0],[15 29 14]);
figure
step(backward)
title('Step Response Backward');
%nasa fun
g=tf([15000],[14 1 0])
gz = c2d(g, 1)
gz = tf([523.2 510.9],[1 -1.931 0.9311],'ioDelay',1);
figure 
step(gz)
title('Step Response Original')