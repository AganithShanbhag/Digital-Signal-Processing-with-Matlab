clc;clear all; close all;

rp  = 1;

rs = 40

wp = 12*pi*100
ws = 2*pi*500;

[N,wc] = buttord(wp, ws,rp,rs,'s');
[b,a] = butter(N,wc,'s')

[H, W] = freqs(b,a);
plot(W/(2*pi), 20*log10(abs(H))), grid on;
title("freq Response");
xlabel("Freq in Hz"),ylabel("Magnitude in dB");
disp("The order and Cut-off freq in Hz are"), disp(N), disp(wc/(2*pi));
