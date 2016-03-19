function [ y ] = myfft1( x )    %对输入的 x 序列进行 FFT，输出为 y 序列
m=nextpow2(length(x));    %寻找最小的 m?
N=2^m;
if length(x)<N
x=[x,zeros(1,N-length(x))];  %将 x 序列补 0，使得序列为2
end
nxd=bin2dec(fliplr(dec2bin([1:N]-1,m)))+1;  %得到的对应的反序序号 （为了输出为正序）
y=x(nxd);
for mm=1:m  %进行 m 级迭代过程
Nmr=2^mm;u=1;  %即每次进行 2 点，4 点，8 点，……，2点 DFT
WN=exp(-i*2*pi/Nmr);  %计算第一次运算的旋转因子
for j=1:Nmr/2  %计算每一次蝶式运算
for k=j:Nmr:N
kp=k+Nmr/2;  %对应的下半部分下标
t=y(kp)*u;
y(kp)=y(k)-t;  %下半部分相减
y(k)=y(k)+t;   %上半部分相加
end
u=u*WN;  %计算下一次运算的旋转因子
end
end