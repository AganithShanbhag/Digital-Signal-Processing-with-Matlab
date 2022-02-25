clc;
clear all;
close all;
wp = 0.2*pi;
ws = 0.3*pi;
rp = 1;
rs = 15;
T = 1;
wa_p = (2*tan(wp/2))/T;
wa_s = (2*tan(ws/2))/T;
[Nb, wcb] = cheb1ord(wa_p, wa_s, rp, rs, 's');
[wb_s, ab_s] = cheby1(Nb, rp, wcb, 's');
disp('For Butterworth the order and cutoff frequency are'), 
disp(Nb), disp(wcb);
[Hb, wb] = freqs(wb_s, ab_s);
[bb_z, ab_z] = bilinear(wb_s, ab_s, 1/T);
[Hbd, wbd] = freqz(bb_z, ab_z);
figure(1);
plot(wbd/pi, 20*log10(abs(Hbd))), title('butterworth'), grid on;
ylabel('Magnitude in db');
xlabel('frequencey in pi units')

[Nb, wcb] = cheb2ord(wa_p, wa_s, rp, rs, 's');
[bb_s, ab_s] = cheby2(Nb, 5, wcb, 's');
disp('For chebyshev the order and cutoff frequency are'), 
disp(Nb), disp(wcb);
[Hb, wb] = freqs(bb_s, ab_s);
[bb_z, ab_z] = bilinear(bb_s, ab_s, 1/T);
[Hbd, wbd] = freqz(bb_z, ab_z);
figure(2);
plot(wbd/pi, 20*log10(abs(Hbd))), title('chebychev2'), grid on;
ylabel('Magnitude in db');
xlabel('frequencey in pi units')

[Nb, wcb] = ellipord(wa_p, wa_s, rp, rs, 's');
[bb_s, ab_s] = ellip(Nb, rp, rs, wcb, 's');
disp('For elliptical the order and cutoff frequency are'), 
disp(Nb), disp(wcb);
[Hb, wb] = freqs(bb_s, ab_s);
[bb_z, ab_z] = bilinear(bb_s, ab_s, 1/T);
[Hbd, wbd] = freqz(bb_z, ab_z);
figure(3);
plot(wbd/pi, 20*log10(abs(Hbd))), title('elliptical'), grid on;
ylabel('Magnitude in db');
xlabel('frequencey in pi units')