w = 30;
ws = 40;
rp = 1;
rs = 30;
T = 0.1;

[Nb, wcb] = buttord(w, ws, rp, rs, 's');
[bb_s, ab_s] = butter(Nb, wcb, 'low', 's');
disp('For Butterworth, the order and cutoff frequency are');
disp(Nb), disp(wcb);

[Hb, wb] = freqs(bb_s, ab_s);
[bb_z, ab_z] = bilinear(bb_s, ab_s, 1/T);
[Hbd, wbd] = freqz(bb_z, ab_z);

figure(1);
plot(wbd/pi, 20*log10(abs(Hbd)));
title('Butterworth');
grid on;
xlabel('Frequency in pi units');
ylabel('Magnitude in dB');



