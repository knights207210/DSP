function [ y ] = myfft1( x )    %������� x ���н��� FFT�����Ϊ y ����
m=nextpow2(length(x));    %Ѱ����С�� m?
N=2^m;
if length(x)<N
x=[x,zeros(1,N-length(x))];  %�� x ���в� 0��ʹ������Ϊ2
end
nxd=bin2dec(fliplr(dec2bin([1:N]-1,m)))+1;  %�õ��Ķ�Ӧ�ķ������ ��Ϊ�����Ϊ����
y=x(nxd);
for mm=1:m  %���� m ����������
Nmr=2^mm;u=1;  %��ÿ�ν��� 2 �㣬4 �㣬8 �㣬������2�� DFT
WN=exp(-i*2*pi/Nmr);  %�����һ���������ת����
for j=1:Nmr/2  %����ÿһ�ε�ʽ����
for k=j:Nmr:N
kp=k+Nmr/2;  %��Ӧ���°벿���±�
t=y(kp)*u;
y(kp)=y(k)-t;  %�°벿�����
y(k)=y(k)+t;   %�ϰ벿�����
end
u=u*WN;  %������һ���������ת����
end
end