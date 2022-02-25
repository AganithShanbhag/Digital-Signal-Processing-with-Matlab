clc;
clear all;
close all;
W = [0:1:500]*pi/500; %501 Values of randian frequency w 0-pi

x = exp(j*W)./(exp(j*W)-0.5);
subplot(121);plot(W, abs(x));title("magnitude Response");xlabel("W");ylabel("Amplitude");
subplot(122);plot(W,angle(x));title("Phase Resonse");xlabel("Randians");ylabel("Angle");
