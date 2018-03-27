g=tf([15000],[14 1 0])
%%%forward
Gs=tf([15000],[14 1 0]);
forward=tf([15000],[14 -27 13]);
figure
dstep([15000],[14 -27 13],20)
hold on
step(g,20)
title('Step Response forward')
%%%%tustin
tustin=c2d(Gs,1,'tustin')
tustin=tf([258.6 517.2 258.6],[1 -1.9311 0.931]);
figure
dstep([15000 30000 15000],[58 -112 54],20)
hold on
step(g,20)
title('Step Response Tustin');
%%%backward
backward=tf([15000 0 0],[15 29 14]);
figure
dstep([15000 0 0],[15 -29 14],20)
%nasa fun
g=tf([15000],[14 1 0])
gz = c2d(g, 1)
gz = tf([523.2 510.9],[1 -1.931 0.9311],1);
hold on 
step(g,20)
title('Step Response Backward')
tustin=c2d(Gs,1,'tustin')