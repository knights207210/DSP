n=-4:59;
x=[zeros(1,4),1,zeros(1,59)];
tic;
y=myfft(x);
toc;
tic;
y1=fft(x);
toc;
tic;
y2=dft(x,64);
toc;
subplot(3,1,3);stem(abs(y2));
title('DFT');
subplot(3,1,1)
stem(abs(y));
title('myfft');
subplot(3,1,2);
stem(abs(y1));
title('matlab-fft');
