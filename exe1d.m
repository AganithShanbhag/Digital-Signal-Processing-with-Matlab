%exercise 1 d

clc;
clear all;
close all;

Fs = 100000;

f1 = 20;
f2 = 30;
f3= 50;


t = 0:(1/Fs):(1/f1);

x = 5*sin(2*pi*f1*t);
y = 5*sin(2*pi*f2*t);
z = 5*sin(2*pi*f3*t);
a = x+y+z;


subplot(4,1,1);plot(t,x);

subplot(4,1,2);plot(t,y);

subplot(4,1,3);plot(t,z);

subplot(4,1,4);plot(t,a);
