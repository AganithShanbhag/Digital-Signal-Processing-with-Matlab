clc; clear all; close all;
wp = 0.2 *pi;
ws = 0.3 * pi;
As = 50; % stop band attenuation
k = (As - 7.95)/14.36;
N = ceil((k*2*pi)/(ws-wp));
disp(N);
b = fir1(N, 0.2, kaiser(N+1, 4.55));
[H, W] = freqz(b, 1, 512);
plot(W/pi, 20*log10(abs(H))), grid on; title("FIR filter using Kaiser window");
xlabel("Normalised Frequency");ylabel("Gain in dB");

