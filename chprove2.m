n=0:50;      %�������еĳ�����50 
A=444.128;      %�����ź��йصĲ���
a=50*sqrt(2.0)*pi;   
T=1/1000;     %������
w0=50*sqrt(2.0)*pi;    %�ط�����MatLab�в������룬��w����
x=A*exp(-a*n*T).*sin(w0*n*T);  %pi��MATLAB����ĦУ��źų˿ɲ��á�.*��
k=-25:25;X1=x*(exp(-j*pi/12.5)).^(n'*k);
magX=abs(X1);     %����x(n)�ķ�����
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