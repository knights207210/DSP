n=-4:20;
x=[zeros(1,4),ones(1,5),zeros(1,16)];
subplot(2,1,1);
stem(n,x);
k=-25:25;X=x*(exp(-j*pi/12.5)).^(n'*k);
magX=abs(X);     %»æÖÆx(n)µÄ·ù¶ÈÆ×
subplot(2,1,2);stem(magX);
x=[zeros(1,4),1,2.5,2.5,1,zeros(1,17)];
%subplot(1,1,1);
%stem(k,x);