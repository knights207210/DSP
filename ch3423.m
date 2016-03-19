N1=10;
n1=1:N1;
ha=sign(sign(N1-n1)+1);
subplot(5,1,1);
stem(ha);
title('ha序列');

A=1;a=0.4;w0=2.0734;T=1;
N2=50;
n2=1:N2;
xa=A*exp(-a*n2*T).*sin(w0*n2*T);
subplot(5,1,2);
stem(xa);
title('xa序列');
k=-25:25;
X=xa*(exp(-j*pi/12.5)).^(n2'*k);
subplot(5,1,3);
stem(abs(X));
title('xa幅度谱');

y=conv(xa,ha);
subplot(5,1,4);
stem(y);
title('y序列');

k=-25:25;
n3=1:N1+N2-1;
Y=y*(exp(-j*pi/12.5)).^(n3'*k);
subplot(5,1,5);
stem(abs(Y));
title('y[n]幅度谱');



%改变w0：当w0减小时，y序列的时域部分（0-10），幅度有所增大。
%频域部分：图形依旧关于中心对称，但是随着w的减小，峰值增大，
%峰值以外的值更加趋近于0值
%改变a值：当a减小时，xa和y序列的时域部分：振荡更为明显，即趋于0的速度变慢；
%频域部分：a的变化并未影响频域曲线的对称性，但是随着a的减小，xa的峰值变大，
%y的峰值数目有所增加。