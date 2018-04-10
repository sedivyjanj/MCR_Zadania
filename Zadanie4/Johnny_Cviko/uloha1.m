P=2.695*10^(-5);
D=0.000412;
Tv=1;
Td=D/P;

%backward
bq0=P*(1+(Td/Tv))
bq1=-P*(1+(2*(Td/Tv)))
bq2=(P*Td)/Tv

%forward
fq0=P*(1+(Td/Tv))
fq1=-P*(1+2*(Td/Tv))
fq2=P*(Td/Tv)

%Lichobeznikova
lq0=P*(1+(Td/Tv))
lq1=-P*(1+2*(Td/Tv))
lq2=P*(Td/Tv)
