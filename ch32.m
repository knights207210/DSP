n=0:50;      %�������еĳ�����50 
A=444.128;      %�����ź��йصĲ���
a=50*sqrt(2.0)*pi;   
T=1/200;     %������
w0=50*sqrt(2.0)*pi;    %�ط�����MatLab�в������룬��w����
x=A*exp(-a*n*T).*sin(w0*n*T);  %pi��MATLAB����ĦУ��źų˿ɲ��á�.*��
close all      %����Ѿ����Ƶ�x(n)ͼ��
subplot(2,1,1);stem(x);    %����x(n)��ͼ��
k=-25:25;X=x*(exp(-j*pi/12.5)).^(n'*k);
magX=abs(X);     %����x(n)�ķ�����
subplot(2,1,2);stem(magX);
