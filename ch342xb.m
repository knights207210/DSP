k=-4:5;
x=[zeros(1,4),1,zeros(1,5)];
subplot(2,1,1);
stem(k,x);
m=-25:25;X=x*(exp(-j*pi/12.5)).^(k'*m);     
magX=abs(X);     %»æÖÆx(n)µÄ·ù¶ÈÆ×
subplot(2,1,2);stem(magX);