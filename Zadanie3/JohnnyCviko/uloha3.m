g=tf([-15000 15000],[14 1 0])
%%%forward
Gs=tf([-15000 15000],[14 1 0]);
forward=tf([-15000 30000],[14 -27 13]);
figure
dstep([-15000 30000],[14 -27 13],20)
hold on
step(g,20)
title('Step Response forward')
legend('forward','Original')
%%%%tustin
figure
dstep([-15000 30000 45000],[58 -112 54],20)
hold on
step(g,20)
title('Step Response Tustin');
legend('Tustin','Original');
%%%backward
figure
dstep([15000 0],[15 -29 14],20)
%nasa fun
g=tf([-15000 15000],[14 1 0])
gz = c2d(g, 1)
gz = tf([523.2 510.9],[1 -1.931 0.9311],1);
hold on 
step(g,20)
title('Step Response Backward')
legend('Backward','Original')
tustin=c2d(Gs,1,'tustin')