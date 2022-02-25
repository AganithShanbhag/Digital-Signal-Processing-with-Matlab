Fs = 500;
wp = [2*29/Fs, 2*30/Fs];
ws = [2*15/Fs, 2*45/Fs];
t = 0:(1/Fs):0.5;

x = sin(2*pi*10*t) +sin(2*pi*30*t)+sin(2*pi*50*t);
figure(1), plot(x); title("input signal");

N = ceil(6.6*pi/(ws(2)- wp(2)));
b = fir1(N, wp);

[H,W] = freqz(b, 1, 1024);

figure(2), plot(W/pi, 20*log10(abs(H))); grid on; title("Filter using Hamming Window");
yb = filter(b, 1, x);
N = 512;
W = [0:N/2-1]*(Fs/N);
X = fft(yb, N);

figure(3), subplot(121),plot(W/pi, abs(X(1:N/2))); grid on; title("Spectrum of O/p Signal");



