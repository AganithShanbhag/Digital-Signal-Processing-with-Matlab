clc;
clear all;
close all;
b = [1 0 0];
a = [1 -0.5 0];
N = 512;
[h w] = freqz(b,a, N, 'whole');
w = w-pi;
subplot(121);plot(w, angle(h));title("Magnitude Response");xlabel("w(radians)");ylabel("Amplitude");
subplot(122);plot(w, abs(h));
title("Phase Response"), xlabel("w(radians)"), ylabel("Angle");

