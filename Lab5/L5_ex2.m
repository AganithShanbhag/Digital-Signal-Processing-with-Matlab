clc;
clear all;
close all;
wp = 0.2*pi;
ws = 0.3*pi;
rp = 1;
rs = 15;
T = 1;
wa_p = wp/T;
wa_s = ws/T;
[Nb, wcb] = cheb1ord(wp, ws, rp, rs, 's');
[bb_s, ab_s] = cheby1(Nb, 10, wcb, 's');
disp('For chebychev1 the order and cutoff frequency are'), 
disp(Nb), disp(wcb);
%[Hb, wb] = freqs(bb_s, ab_s);
[bb_z, ab_z] = impinvar(bb_s, ab_s, 1/T);
[Hbd, wbd] = freqz(bb_z, ab_z);
figure(1);
plot(wbd/pi, 20*log10(abs(Hbd))), title('chebychev1'), grid on;
ylabel('Magnitude in db');
xlabel('frequencey in pi units')

[Nb,Wcb]=cheb2ord(wp,ws,rp,rs,'s');
[bb_s,ab_s]=cheby2(Nb,30,Wcb,'s');
disp('for chebyshev 2 ,the order and cutoff freq are')
disp(Nb),disp(Wcb);
[bb_z,ab_z]=impinvar(bb_s,ab_s,1/T);
[hbd,Wbd]=freqz(bb_z,ab_z);
figure(2),plot(Wbd/pi,20*log10(abs(hbd)));
title('chebychev2'),grid on;
ylabel('magnitude in dB');
xlabel('frequency in pi units');

[Nb,Wcb]=ellipord(wp,ws,rp,rs,'s');
[bb_s,ab_s]=ellip(Nb,1,rs,Wcb,'s');
disp('for elliptic ,the order and cutoff freq are')
disp(Nb),disp(Wcb);
[bb_z,ab_z]=impinvar(bb_s,ab_s,1/T);
[hbd,Wbd]=freqz(bb_z,ab_z);
figure(3),plot(Wbd/pi,20*log10(abs(hbd)));
title('elliptic'),grid on;
ylabel('magnitude in dB');
xlabel('frequency in pi units');