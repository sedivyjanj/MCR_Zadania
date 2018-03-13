gld = tf([-15000 15000],[14 1 0],'ioDelay',1); %transfer function
glp=pade(gld,1) %Padeho aproximacia
[r,p,k]=residue([15000 -45000 30000],[14 29 2 0 0]);% pre prechodovu fun.
[r,p,k]=residue([15000 -45000 30000],[14 29 2 0])%pre impulzovu fun.
figure
step(glp)
figure
impulse(glp)

