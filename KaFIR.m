%设计多频带滤波器
f=0:0.1:1;
m=[0,0,1,1,0,0,1,1,0,0,0];
Order=40;
BETA=4;
b=fir2(Order,f,m,kaiser(Order+1,BETA));
[h,w]=freqz(b,1,128);
plot(w/pi,abs(h));
hold on;
%plot(w/pi,angle(h),'r');