%low pass Butterworth Filter
rp = 1;rs = 50;
wp = 2*pi*1000;
ws = 2*pi*200;

[N, wc] = buttord(wp, ws, rp,rs,'s');
[b,a] = butter(N,wc,'high', 's')
[H,W] = freqs(b,a);

plot(W/(2*pi), 20*log10(abs(H))),grid on;
title("Freq Response");
xlabel("Freq in Hz"), ylabel("Magnitude in dB");
disp('The order and Cutoff freq in Hz are');
disp(N), disp(wc/(2*pi))
