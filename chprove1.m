n=0:50;      %�������еĳ�����50 
A=444.128;      %�����ź��йصĲ���
a=50*sqrt(2.0)*pi;   
T=1/1000;     %������
w0=50*sqrt(2.0)*pi;    %�ط�����MatLab�в������룬��w����
X1=A*exp(-a*n*T).*sin(w0*n*T);  %pi��MATLAB����ĦУ��źų˿ɲ��á�.*��
close all      %����Ѿ����Ƶ�x(n)ͼ��
%subplot(4,1,1);stem(n,X1);    %����x(n)��ͼ��
k=-4:46;                    %���޵ģ�������Ӧ��
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