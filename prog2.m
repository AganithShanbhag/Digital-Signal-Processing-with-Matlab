% Solved question 2
clc;
clear all;
Fs = 1000;%sampling Freq
f = 200; %signal freq
T = 0:(1/Fs):(1/f);

x = 5*sin(2*pi*f*T);
%sampled at Fs
subplot(3,1,1);stem(T,x);title("Sine Wave sampled at 1000Hz");ylabel("Amplitude");

Fs1 = 10000;%another sampling freq
f =200;
T = 0:(1/Fs1):(1/f);
x = 5*sin(2*pi*f*T);
subplot(3,1,2);stem(T,x);title("Sine Wave sampled at 10000Hz");ylabel("Amplitude");

