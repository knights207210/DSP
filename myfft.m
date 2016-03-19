function[y]=myfft(x)
%找到N
len=length(x);
    for m=0:10000000000
         if power(2,m)>=len
            N=power(2,m);
            break;
         else
             m=m+1;
         end
    end
%若不足N,补零
if len<N
  x=[x,zeros(1,N-len)]; 
end
%为使得正序输出，根据反序规则，原序数n->二进制n2n1n0->反序二进制n0n1n2->反序数nr
n2n1n0=dec2bin([0:N-1],m);
n0n1n2=fliplr(n2n1n0);
nr=bin2dec(n0n1n2)+1;           %matlab中的数组下标从1开始
y=x(nr);
%进行蝶形运算
for M=1:m                    %将运算基2分解，则共可分解m次
    Nm=power(2,M);           %分解后的序列长度
    W=exp(-j*2*pi/Nm);       %蝶形旋转因子的计算
    Wn=1;
    for k=1:Nm/2             %序列长度为Nm，需要做Nm/2次蝶形运算
        for i=k:Nm:N         %蝶形运算之间以Nm为间隔
            temp=Wn*y(i+Nm/2);
            y(i+Nm/2)=y(i)-temp;
            y(i)=y(i)+temp;
        end
        Wn=W*Wn;             %下一次蝶形运算的旋转因子，总共有Nm/2个蝶形因子
    end
end
end