k=-4:20;
x=[zeros(1,4),1,2.5,2.5,1,zeros(1,17)];
%subplot(4,1,1);
%stem(k,x);
s=-4:20;
X=[zeros(1,4),1,zeros(1,20)];
%subplot(4,1,2);
%stem(s,X);
n=0:48;
Y=conv(x,X);
subplot(2,1,1);
stem(n,Y);
m=-25:25;X1=Y*(exp(-j*pi/12.5)).^(n'*m);
magX=abs(X1);     %»æÖÆx(n)µÄ·ù¶ÈÆ×
subplot(2,1,2);stem(magX);
