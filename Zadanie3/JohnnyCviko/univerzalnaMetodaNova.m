%[B,A]=c2dm(15000,[14 1 0],1,'zoh')
%univerzalna metoda
num1=[5];
den1=conv([2 1],[3 1]);

num=[-15000 15000];
den=[14 1 0];


T=1;

si = roots(den);
zi=exp(si*T);
A=conv([1 -zi(1)],[1 -zi(2)]);
a1 = A(2)
a2 = A(3)

%citatel
num1=[-15000 15000];
den1=[14 1 0 0];
[r,p,k]= residue(num1,den1)

k=0;
hp0=(225000)*exp((-1/14)*k*T)-(225000)+(15000)*k*T
k=1;
hp1=(225000)*exp((-1/14)*k*T)-(225000)+(15000)*k*T
k=2;
hp2=(225000)*exp((-1/14)*k*T)-(225000)+(15000)*k*T

gsp0=hp0
gsp1=hp1-hp0
gsp2=hp2-hp1

b0=gsp0
b1=gsp1+a1*gsp0
b2=gsp2+a1*gsp1+a2*gsp0

[Bz,Az]=c2dm(num,den,T,'zoh')

