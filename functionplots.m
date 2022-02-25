clc
clear all;
close all;
n = -20:15;

u = [(n)>=0];
u5 = [(n-5)>=0];
a5 = 5*u;
xn = u - u5; %rectangular winodow
xr = n.*5; %ramp signal

subplot(321), stem(n,u), title("Unit Step Function");ylabel("Amplitude");
subplot(322), stem(n,u5), title("Delayed Unit Function");
subplot(323),stem(n, a5), title("Amplitude scaled function");ylabel("Amplitude");

subplot(324),stem(n,xn), title("Window");ylabel('x[n]');xlabel("n--->");
subplot(325),stem(n,xr),title("Ramp FUNCTION");ylabel("Amplitude");xlabel("n--->");
