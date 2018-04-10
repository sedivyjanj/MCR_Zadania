g=tf([-15000 15000],[14 1 0],'ioDelay',1);
gz=c2d(g,1);
g2=tf([1 0],[1 -1],1);
gKon=gz*g2
[num, den]=tfdata(gz,'v')
roots(den)
[r,p,k]=residue(num,den)
k=4;
Yk=15000-(15511/0.9311)*0.9311^(k)