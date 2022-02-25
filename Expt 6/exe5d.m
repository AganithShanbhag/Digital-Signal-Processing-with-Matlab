wp = 0.2*pi;
ws = 0.3*pi;
rp = 1;
rs = 20;
T = 1;
wa_p = wp/T;
wa_s = ws/T;
[Nb, wcb] = ellipord(wa_p, wa_s, rp, rs, 's');
[bb_s, ab_s] = ellip(Nb, rp, rs, wcb, 's');
disp('For elliptical the order and cutoff frequency are'), 
disp(Nb), disp(wcb);
%[Hb, wb] = freqs(bb_s, ab_s);
[bb_z, ab_z] = impinvar(bb_s, ab_s, 1/T);
[Hbd, wbd] = freqz(bb_z, ab_z);
figure(1);
plot(wbd/pi, 20*log10(abs(Hbd))), title('chebychev1'), grid on;
ylabel('Magnitude in db');
xlabel('frequencey in pi units')