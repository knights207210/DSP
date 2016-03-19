a=0.1;
f=0.5625;
X2=exp(-a*n).*sin(2*pi*f*n).*(n>=0&n<=15)+0*(n>15);
subplot(2,1,1);
stem(n,X2);
k=-25:25;X=X2*(exp(-j*pi/12.5)).^(n'*k);
magX=abs(X);     %»æÖÆx(n)µÄ·ù¶ÈÆ×
subplot(2,1,2);stem(magX);