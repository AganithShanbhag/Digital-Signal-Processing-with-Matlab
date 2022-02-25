%Solved Question 4

clc;
close all;
clear all;
x = [3, 11,7,0,-1,4,2];

nx = -3:3;
ny = nx+2; %Every value added with 2

y1 = x;
w= randn(1, length(y1));
y = y1+ w;%noise added
nyb = ny(1)+nx(1);
nye = ny(length(y1))+nx(length(x));
ny = nyb:nye;
xcr = xcorr(x,y);%cross correlation 
stem(ny, xcr);
title("cross-Correlation example");
xlabel("Time, n");

