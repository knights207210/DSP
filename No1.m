n=[0:50];      %定义序列的长度是50 
A=444.128;      %设置信号有关的参数
a=50*sqrt(2.0)*pi;   
T=0.001;     %采样率
w0=50*sqrt(2.0)*pi;    %ω符号在MatLab中不能输入，用w代替
x=A*exp(-a*n*T).*sin(w0*n*T);  %pi是MATLAB定义的π，信号乘可采用“.*” 代表矩阵乘
close all      %清除已经绘制的x(n)图形
subplot(3,1,1); %将多张图绘制到一个平面上，m行，n列，p代表位置
stem(n,x);    %绘制x(n)的图形 stem（n，x，‘filled’）依次代表x轴取值范围，圈是实心还是空心