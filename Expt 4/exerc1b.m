%low pass Butterworth Filter
rp = 1;rs = 50;
wp = 2*pi*200;
ws = 2*pi*700;

[N, wc] = cheb1ord(wp, ws, rp,rs,'s');
[b,a] = cheby1(N,rp,wp, 's');

[H,W] = freqs(b,a);

plot(W/(2*pi), 20*log10(abs(H))),grid on;
title("Freq Response");
xlabel("Freq in Hz"), ylabel("Magnitude in dB");
disp('The order and Cutoff freq in Hz are');
disp(N), disp(wc/(2*pi))
