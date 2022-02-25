clc; close all; clear all;
%Digtal filter Specifications
wp = 0.2*pi; ws = 0.3*pi; rp = 1; rs = 15;

T = 1;
wa_p = wp/T;
wa_s = ws/T;

[Nb, wcb] = cheb1ord(wp, ws, rp, rs, 's');
[bb_s, ab_s] = cheby1(Nb,10, wcb, 's');
disp("For Butter, the order and cutoff frequency are");
disp(Nb), disp(wcb);

[bb_z, ab_z] = impinvar(bb_s, ab_s, 1/T);
[Hbd, wbd] = freqz(bb_z, ab_z);

figure(1);
plot(wbd/pi, 20*log10(abs(Hbd)));
title("Chebvyshev"); grid on;
ylabel("Magnitude in dB");
xlabel("Freq in pi units");

[Nb, Wcb] = cheb2ord(wp, ws, rp, rs, 's');
[bb_s, ab_s] = cheby2(Nb, 30, Wcb,'s');

disp(Nb), disp(Wcb);

[bb_z, ab_z] = impinvar(bb_s, ab_s, 1/T);
[Hbd, wbd] = freqz(bb_z, ab_z);

figure(2);
plot(wbd/pi, 20*log10(abs(Hbd)));
title("Chebvyshev 2"); grid on;
ylabel("Magnitude in dB");
xlabel("Freq in pi units");

[Nb, Wcb] = ellipord(wp, ws, rp, rs, 's');
[bb_s, ab_s] = ellip(Nb,1,rs,Wcb, 's');

disp("For Elliptic the order and Cutoff freq are");
disp(Nb); disp(Wcb);
[bb_z, ab_z] = impinvar(bb_s, ab_s, 1/T);

[Hbd, Wbd] =freqz(bb_z, ab_z);


figure(3);
plot(wbd/pi, 20*log10(abs(Hbd)));
title("elliptic Filter"); grid on;
ylabel("Magnitude in dB");
xlabel("Freq in pi units");






