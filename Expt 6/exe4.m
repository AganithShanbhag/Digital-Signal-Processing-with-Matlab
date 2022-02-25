clc; close all; clear all;
%Digtal filter Specifications
wp = 0.2*pi; ws = 0.3*pi; rp = 1; rs = 15;

T = 1;
wa_p = (2*tan(wp/2))/T;
wa_s = (2*tan(ws/2))/T;

[Nb, wcb] = cheb1ord(wa_p, wa_s,rp,rs, 's'); %check
[bb_s, ab_s] = cheby1(Nb,rp, wcb, 's');
disp("For Chebychev, the order and cutoff frequency are");
disp(Nb), disp(wcb);
[Hb, Wb] = freqs(bb_s, ab_s);
[bb_z, ab_z] = bilinear(bb_s, ab_s, 1/T);
[Hbd, wbd] = freqz(bb_z, ab_z);


figure(1);
plot(wbd/pi, 20*log10(abs(Hbd)));
title("Chebvyshev"); grid on;
ylabel("Magnitude in dB");
xlabel("Freq in pi units");

[Nb, Wcb] = cheb2ord(wa_p, wa_s, rp, rs, 's');
[bb_s, ab_s] = cheby2(Nb, 5, Wcb,'s');

disp("For Chebychev- II, the order and cutoff frequency are");
disp(Nb), disp(Wcb);

[Hb, Wb] = freqs(bb_s, ab_s);
[bb_z, ab_z] = bilinear(bb_s, ab_s, 1/T);
[Hbd, wbd] = freqz(bb_z, ab_z);

figure(2);
plot(wbd/pi, 20*log10(abs(Hbd)));
title("Chebvyshev 2"); grid on;
ylabel("Magnitude in dB");
xlabel("Freq in pi units");

[Nb, Wcb] = ellipord(wa_p, wa_s, rp, rs, 's');
[bb_s, ab_s] = ellip(Nb,1,rs,Wcb, 's');

disp("For Elliptic the order and Cutoff freq are");
disp(Nb); disp(Wcb);

[Hb, Wb] = freqs(bb_s, ab_s);
[bb_z, ab_z] = bilinear(bb_s, ab_s, 1/T);

[Hbd, wbd] =freqz(bb_z, ab_z);


figure(3);
plot(wbd/pi, 20*log10(abs(Hbd)));
title("elliptic Filter"); grid on;
ylabel("Magnitude in dB");
xlabel("Freq in pi units");







