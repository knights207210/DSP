p=14;
q=8;
n=0:20;
W=(n-p).*(n-p);
X1=exp(-W/q).*(n>=0&n<=15)+0*(n>15);
%subplot(2,1,1);
%stem(n,X1);
k=-25:25;X=X1*(exp(-j*pi/25)).^(n'*k);
magX=abs(X);          %»æÖÆx(n)µÄ·ù¶ÈÆ×
subplot(1,1,1);stem(magX);