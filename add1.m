n=0:63;
a=0.1;
f=0.5625;
X=exp(-a*n).*sin(2*pi*f*n).*(n>=0&n<=15)+0*(n>15);
subplot(3,1,1);
stem(n,X);
w=randn(1,64);
y=X+w;
subplot(3,1,2);
stem(y);
k=-25:25;Y=y*(exp(-j*pi/12.5)).^(n'*k);
xx=abs(Y);
subplot(3,1,3);
stem(xx);