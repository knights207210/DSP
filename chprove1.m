n=0:50;      %定义序列的长度是50 
A=444.128;      %设置信号有关的参数
a=50*sqrt(2.0)*pi;   
T=1/1000;     %采样率
w0=50*sqrt(2.0)*pi;    %ω符号在MatLab中不能输入，用w代替
X1=A*exp(-a*n*T).*sin(w0*n*T);  %pi是MATLAB定义的π，信号乘可采用“.*”
close all      %清除已经绘制的x(n)图形
%subplot(4,1,1);stem(n,X1);    %绘制x(n)的图形
k=-4:46;                    %有限的，有问题应该
X2=[zeros(1,4),ones(1,10),zeros(1,37)];
%subplot(4,1,2);
%stem(k,X2);
Y=conv(X1,X2);
%subplot(4,1,3);
%stem(Y);
s=0:100;
m=-25:25;X=Y*(exp(-j*pi/12.5)).^(s'*m);
%subplot(4,1,4);
xx=abs(X);
%stem(xx);
k=-25:25;Y1=X1*(exp(-j*pi/12.5)).^(n'*k);
k=-25:25;Y2=X2*(exp(-j*pi/12.5)).^(n'*k);
Z=Y1.*Y2;
zz=abs(Y);
c=xx-zz;
stem(c);