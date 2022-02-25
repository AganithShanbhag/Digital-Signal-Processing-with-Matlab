%frequency sampling design technique

clc, clear all, close all;
M = 20; % number of samples
% assumed
alpha = (M-1)/2; % used for phase calculation
Hrs = [1,1,1,zeros(1,15),1,1];
k1 = 0: floor((M-1)/2); % it varies from 0 to (M-1)/2

k2 = floor((M-1)/2)+1:M-1; 

angH = [-alpha*(2*pi)*k1/M, alpha*(2*pi)*(M-k2)/M];
H = Hrs.*exp(j*angH); 

h = real(ifft(H,M));

[H,W]=freqz([h],1,1024);
figure(2);plot(W/pi,20*log10(abs(H))), zoom on, grid on;
title('FIR LPF using frequency sampling design');
xlabel('Normalized Frequency'), ylabel('Gain in dB');
% Note that stop band attenuation is not very good, is about 15dB only