X=[32,64,128,256,512,1024,2048,4096];
Y=[0.001,0.003,0.007,0.017,0.027,0.058,0.105,0.217];
hold on;
grid on;
plot(X,Y,'color','k','Marker','o','Markerfacecolor','k');
X=[32,64,128,256,512,1024,2048,4096];
Y=[0.000469,0.001776,0.003443,0.008313,0.017206,0.034629,0.059549,0.112204];
hold on;
grid on;
plot(X,Y,'color','r','Marker','h','Markerfacecolor','r');
legend('myfft','DFT','Location','NorthWest');
%X=[32,64,128,256,512,1024,2048,4096];
%Y=[0.003,0.019,0.063,0.266,0.979,3.546,11.088,38.299];
%hold on;
%grid on;
%plot(X,Y,'color','g','Marker','o','Markerfacecolor','g');
%X=[32,64,128,256,512,1024,2048,4096];
%Y=[0.000469,0.001776,0.003443,0.008313,0.017206,0.034629,0.059549,0.112204];
%plot(X,Y,'color',[rand,rand,rand]);
