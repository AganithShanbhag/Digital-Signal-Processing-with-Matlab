clc;
clear all;
close all;
b1 = [0.16, -0.48, 0.48, -0.16];
a1 = [1, 0.13, 0.52, 0.3];

b2 = [0.634, 0, -0.634];
a2 = [1, 0, -0.268]

b3 = [0.634, 0, 0.634];
a3 = [1, 0, 0.268];

b4 = [1, -5, 10];
a4 = [10, -5, 1];

n = 512;
[h1, w1] = freqz(b1, a1, n);
[h2, w2] = freqz(b2, a2, n);
[h3, w3] = freqz(b3, a3, n);
[h4, w4] = freqz(b4, a4, n);

subplot(421);
plot(w1, abs(h1));
subplot(422);
plot(w1, angle(h1));

subplot(423);
plot(w2, abs(h2));
subplot(424);
plot(w2, angle(h2));

subplot(425);
plot(w3, abs(h3));
subplot(426);
plot(w3, angle(h3));

subplot(427);
plot(w4, abs(h4));
subplot(428);
plot(w4, angle(h4));