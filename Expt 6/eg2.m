clc; close all; clear all;
Fs = 1000;
t = 0:1/(Fs):0.5;
wc = 2*100/Fs;

x = sin(2*pi*t*50) +sin(2*pi*t*200);
[b,a] = butter(3,wc, 'high');
[H,W] = freqz(b,a,Fs);
k = W*Fs/(2*pi);

plot(k, 20*log10(abs(H))), grid on;title("Frequency Response");
xlabel("Freq in Hz");ylabel("Magnitude in dB");

yb = filter(b,a,x);
N = 512;
w = [0:N/2-1]*(Fs/N);


x = fft(x,N);
Yb = fft(yb, N);
figure(2);
subplot(211), plot(w, abs(x(1:N/2)));
title("Spectrum of input signal");
subplot(212), plot(w, abs(Yb(1:N/2)));
title("spectrum of filtered Signal");

