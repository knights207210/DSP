n=0:50;      %定义序列的长度是50 
A=444.128;      %设置信号有关的参数
a=50*sqrt(2.0)*pi;   
T=1/1000;     %采样率
w0=50*sqrt(2.0)*pi;    %ω符号在MatLab中不能输入，用w代替
x=A*exp(-a*n*T).*sin(w0*n*T);  %pi是MATLAB定义的π，信号乘可采用“.*”
k=-25:25;X1=x*(exp(-j*pi/12.5)).^(n'*k);
magX=abs(X1);     %绘制x(n)的幅度谱
subplot(3,1,1);stem(magX);
s=-4:46;                    
X2=[zeros(1,4),ones(1,10),zeros(1,37)];
m=-25:25;X3=X2*(exp(-j*pi/12.5)).^(s'*m);
xx=abs(X3);
subplot(3,1,2);
stem(xx);
Y=X1.*X3;
yy=abs(Y);
subplot(3,1,3);
stem(yy);