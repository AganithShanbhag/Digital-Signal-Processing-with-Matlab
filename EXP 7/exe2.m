clc; clear all; close all; 
wp = 0.5*pi;
ws = 0.6*pi;
N = ceil(6.6*pi/(ws-wp));
As = 40; 
k = (As-7.95)/14.36;
N1 = ceil(2*pi*k/(ws - wp));
disp(N); disp(N1);
b = fir1(N,[0.4, 0.6]);
[H,W] = freqz(b, 1, 512);
plot(W/pi, 20*log10(abs(H)));grid on; title("FIR filtering using Hamming window");
xlabel("Normalized Frequency");ylabel("Gain in dB");

b1 = fir1(N, [0.4, 0.6], kaiser(N+1, 3.5));
[H1, W1] = freqz(b1, 1, 512);
figure(2);plot(W1/pi, 20*log10(abs(H1)));grid on; title("FIR filtering using Kaiser window");
xlabel("Normalized Frequency");ylabel("Gain in dB");
