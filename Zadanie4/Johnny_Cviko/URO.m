Gr=tf([4.3895*10^(-4) -8.5095*10^(-4) 4.12*10^(-4)],[1 -1 0],1,'Variable','z^-1')
Gp1=tf([0 523.1837 510.8746],[1 -1.9311 0.9311],1,'Variable','z^-1')
Gp2=tf([0 1],[1],1,'Variable','z^-1')
Gp=Gp1*Gp2


num=Gr*Gp
den = 1+Gr*Gp
ret=num/den

poly=pole(ret)
absolut=abs(poly)