function[y]=myfft(x)
%�ҵ�N
len=length(x);
    for m=0:10000000000
         if power(2,m)>=len
            N=power(2,m);
            break;
         else
             m=m+1;
         end
    end
%������N,����
if len<N
  x=[x,zeros(1,N-len)]; 
end
%Ϊʹ��������������ݷ������ԭ����n->������n2n1n0->���������n0n1n2->������nr
n2n1n0=dec2bin([0:N-1],m);
n0n1n2=fliplr(n2n1n0);
nr=bin2dec(n0n1n2)+1;           %matlab�е������±��1��ʼ
y=x(nr);
%���е�������
for M=1:m                    %�������2�ֽ⣬�򹲿ɷֽ�m��
    Nm=power(2,M);           %�ֽ������г���
    W=exp(-j*2*pi/Nm);       %������ת���ӵļ���
    Wn=1;
    for k=1:Nm/2             %���г���ΪNm����Ҫ��Nm/2�ε�������
        for i=k:Nm:N         %��������֮����NmΪ���
            temp=Wn*y(i+Nm/2);
            y(i+Nm/2)=y(i)-temp;
            y(i)=y(i)+temp;
        end
        Wn=W*Wn;             %��һ�ε����������ת���ӣ��ܹ���Nm/2����������
    end
end
end