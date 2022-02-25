%analog butterworth Lo-Pass prototype of n = 5

clc; clear all; close all;

N = 5; %filter order

Wc = 0.2*pi; %cuttoff freq

[z, p ,k] = buttap(N)
zplane([poly(z)],[poly(p)])
figure
p1 = p*Wc;

k1 =- k*Wc^N;

B = real(poly(z));
b0 = k1;
b = k1*B;
a = real(poly(p1));
zplane(b,a)

