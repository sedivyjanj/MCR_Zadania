%[Q,R] = deconv([1 -0.8 0 0 0 0],[1 -1.5 0.5])
Gpz= c2d(tf([-15000 15000],[14 1 0]),1,'zoh')
pom = tf([1 0],[1 -1],1)
H=Gpz*pom
[Q1,R1] = deconv([1.466 -3.249 0 0 0 0 0],[1 -5.367 8.849 -4.482])
%ma to byt rovnake ako Hpkt z 3 zadania