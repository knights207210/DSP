%�����Ȳ����ź�x[n]
n=0:50;%���г�Ϊ51
A=444.128;
a=50*sqrt(2.0)*pi;
T=1/1600;%������,1000,300,200
w0=50*sqrt(2.0)*pi;
x=A*exp(-a*n*T).*sin(w0*n*T);
close all;%����Ѿ����Ƶ�x[n]ͼ��
subplot(3,3,1);
stem(x);
title('T=1000');
%�����źŵķ����׺���λ��
k=-25:25;%���ź���DTFT�任��DTFT�任֮�������������ڵĵģ�����Ϊ2pi���轫����ɢ����
%������[-2pi,2pi]ȡ51���㣬��W=(2pi/25)*k
X=x*(exp(-j'*pi/12.5)).^(n'*k);
magX=abs(X);
subplot(3,3,2);
stem(magX);
angX=angle(X);
subplot(3,3,3);
stem(angX);

n=0:50;%���г�Ϊ51
A=444.128;
a=50*sqrt(2.0)*pi;
T=1/300;%������,1000,300,200
w0=50*sqrt(2.0)*pi;
x=A*exp(-a*n*T).*sin(w0*n*T);
subplot(3,3,4);
stem(x);
title('T=300');
%�����źŵķ����׺���λ��
k=-25:25;%���ź���DTFT�任��DTFT�任֮�������������ڵĵģ�����Ϊ2pi���轫����ɢ����
%������[-2pi,2pi]ȡ51���㣬��W=(2pi/25)*k
X=x*(exp(-j'*pi/12.5)).^(n'*k);
magX=abs(X);
subplot(3,3,5);
stem(magX);
angX=angle(X);
subplot(3,3,6);
stem(angX);

n=0:50;%���г�Ϊ51
A=444.128;
a=50*sqrt(2.0)*pi;
T=1/200;%������,1000,300,200
w0=50*sqrt(2.0)*pi;
x=A*exp(-a*n*T).*sin(w0*n*T);
subplot(3,3,7);
stem(x);
title('T=200');
%�����źŵķ����׺���λ��
k=-25:25;%���ź���DTFT�任��DTFT�任֮�������������ڵĵģ�����Ϊ2pi���轫����ɢ����
%������[-2pi,2pi]ȡ51���㣬��W=(2pi/25)*k
X=x*(exp(-j'*pi/12.5)).^(n'*k);
magX=abs(X);
subplot(3,3,8);
stem(magX);
angX=angle(X);
subplot(3,3,9);
stem(angX);

%���Ų����ʵ��½�����������Խ��Խ���ء�