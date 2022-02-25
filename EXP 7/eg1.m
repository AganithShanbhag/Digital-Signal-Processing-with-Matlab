%window based approach

clc, clear all, close all;
wp = 0.2*pi; ws = 0.3*pi;
N = ceil(6.6*pi/(ws-wp));
% estimates order of the filter
b = fir1(N, 0.2); %window based FIR design

[H,W] = freqz(b,1,512); % no poles so 1 and 512 point freq reponse
plot(W/pi,20*log10(abs(H))), grid on, title('FIR filter using Hamming window');
xlabel('Normalized Frequency'), ylabel('Gain in dB');
% this filter provides about 53dB attenuation in stop band
% and pass band ripples are less than 0.25dB as expected.

%FIR filter have linear phase response
%more ripples due to windowing techniques