n=0:50;      %定义序列的长度是50 
A=444.128;      %设置信号有关的参数
a=50*sqrt(2.0)*pi;   
T=1/200;     %采样率
w0=50*sqrt(2.0)*pi;    %ω符号在MatLab中不能输入，用w代替
x=A*exp(-a*n*T).*sin(w0*n*T);  %pi是MATLAB定义的π，信号乘可采用“.*”
close all      %清除已经绘制的x(n)图形
subplot(2,1,1);stem(x);    %绘制x(n)的图形
k=-25:25;X=x*(exp(-j*pi/12.5)).^(n'*k);
magX=abs(X);     %绘制x(n)的幅度谱
subplot(2,1,2);stem(magX);
