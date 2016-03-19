n=0:15;
X3=(n+1).*(n>=0&n<=3)+(8-n).*(n>=4&n<=7)+0*(n>7);
subplot(2,1,1);
stem(n,X3);
Y3=fft(X3);
yy=abs(Y3);
subplot(2,1,2);
stem(yy);