n=0:15;
X4=(4-n).*(n>=0&n<=3)+(n-3).*(n>=4&n<=7)+0*(n>7);
subplot(2,1,1);
stem(n,X4);
Y3=fft(X4);
yy=abs(Y3);
subplot(2,1,2);
stem(yy);