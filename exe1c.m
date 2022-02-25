%exercise 1 c
T = 10*(1/50);

fs = 1000;
t = 0:1/fs:T-1/fs;

x = sawtooth(2*pi*50*t);

plot(t,x)
grid on