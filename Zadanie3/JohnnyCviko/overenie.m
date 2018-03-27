g=tf([15000],[14 1 0])
T1=0.1;
T2=1;
T3=10;
gz1 = c2d(g,T1)
gz2 = c2d(g,T2)
gz3 = c2d(g,T3)
figure
bode(gz1);
hold on
bode(g);
legend('C2D','Transfer Function')
title('Bode Diagram T=0.1');
figure
bode(gz2);
hold on
bode(g);
legend('C2D','Transfer Function')
title('Bode Diagram T=1');
figure
bode(gz3);
hold on
bode(g);
legend('C2D','Transfer Function')
title('Bode Diagram T=10');
