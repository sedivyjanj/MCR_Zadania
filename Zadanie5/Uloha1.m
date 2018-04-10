g=tf([-15000 15000],[14 1 0],'ioDelay',1);
gz=c2d(g,1);
g2=tf([1 0],[1 -1],1);
gKon=gz*g2
[num, den]=tfdata(gKon,'v');
num=[num 0 0 0 0 0 0];
deconvVect=deconv([0 num], den)
stairs(deconvVect) 

%TOTO BY SME MALI V GRAFE POSUSNUT OD NULY
%A 0 NA ZACIATKU JE TAM PRETO ZE DOPRAVNE ONESKORENIE NAM TO CELE POSUVA O
%JEDNO DOPRAVA
%DRUHA ULOHA BUDE TREBA NAS TVAR PREROBIT NA Y(z)/U(z) A NASU FUNKCIU
%PODELIT NAJVYSSOU MOCNINOU CIZE z^2
%Y(z)*MENOVATEL = U(z)*CITATEL
%Y(z)*z^-1 = y(k-i)
%Y(k)=-a1Y(K-1)-a2Y(K-2)+b1U(K-1)+b2U(K-2)
