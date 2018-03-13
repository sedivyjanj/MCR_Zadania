%pre zakladny model
tf1 = tf([32.7 1.254 -1036 -4.705],[1 1.298 1.682 0.01004 0.0001753 0]);
figure 
step(tf1)

%pre novy system
gld = tf([15000],[14 1 0],'ioDelay',1);
glp = pade(gld,1);
figure 
step(glp)


