b = [0, 1, 1];
a = [1, 5, 6];
Fs = 1/0.1;
[b_z, a_z] = bilinear(b,a,Fs);
[H, W] = freqs(b,a);


subplot(211), plot(W/(2*pi), 20*log10(abs(H)));
grid on;
title("Analog Filter");
xlabel("Freq in Hz"), ylabel("Magnitude in dB");

[B, A] = impinvar(b, a, Fs);
[Hz, Wz] = freqz(B,A);

subplot(212), plot(Wz/(pi), 20*log10(abs(Hz)));
grid on;
title("Digital Filter");
xlabel("Freq in Hz"), ylabel("Magnitude in dB");