clear all;
clse all;
Fs= 10000;
f1= 30;
f2= 80;
f3= 120;
x1 = 5*sin(2*pi*f1*t)

x3 = 5*sin(2*pi*f3*t)

x2 = 5*sin(2*pi*f2*t)

a = x1 +x2+x3


X= fft(x);
l = length(X)/2;
f = [0:(l-1)]*(Fs/(2*l));