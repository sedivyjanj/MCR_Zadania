Gnasa = tf([15000],[14 1 0],'ioDelay',1);
Gnew = pade(Gnasa,1);
[Kkr,A,Wkr,b] = margin(Gnew);
P1=0.4*Kkr;
Tkr = (2*pi)/Wkr;
Td = 0.05*Tkr;
D1 = P1*Td;
P1
D1
%P1=2.7134e-05
%D1=3.2179e-05