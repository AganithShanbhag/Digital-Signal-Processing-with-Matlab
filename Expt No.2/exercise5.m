clc;
clear all;
close all;
g=[1 -3 4 2 0 -2]
h=[3 0 1 -1 2 1]
clin=conv(g,h);
ccirc=cconv(g,h,11);
g1=[g zeros(1,11-length(g))];
h1=[h zeros(1,11-length(h))];
clin2= ifft(ifft(g1).*fft(h1));
subplot(3,1,1),stem(clin);
title('linear convolution');
subplot(3,1,2), stem(ccirc), title('circular convolution');
subplot(3,1,3), stem(clin2), title('linear convolution using circular convolution');