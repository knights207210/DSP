xn=[2,-1,1,1]; 
n=0:3; 
w=-pi:0.01:pi; 
X=xn*exp(-1i*n'*w); %º∆À„DTFT  
yy=abs(X); 
subplot(211); 
plot(w,yy); 

 
