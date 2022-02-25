clc; clear all;close all;
frq = 30;
Fs = 1000;
t = 0:(1/Fs):1; %window l is 0 to 1
x = sin(2*pi*frq*t);
X= fft(x);
l = length(X)/2;
f = [0:(l-1)]*(Fs/(2*l));
subplot(311),plot(t,x);title("sine wave of freq 30Hz");xlabel("Time in Sec");ylabel("Amplitude");

subplot(312),plot(f,abs(X(1:l)));zoom on;title("Magnitude Response");ylabel("Amplitude");
ang = (angle(X(1:l))*(180/pi));
subplot(313), plot(f,ang);title("phase Response");xlabel("Freq in Hz");ylabel("Angle in Deg");


