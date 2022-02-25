clc;
clear all;
close all;
a = [1 -0.95 0.9025]
b = [1 1 1]/3;
y = [-2 -3];
x = [1 1];
xic = filtic(b, a, y, x);
ax = [1 -1 1]; bx = [1 -0.5];
ay = conv(a, ax);
by = conv(b, bx)+conv(xic,ax);
[R, p, C] = residuez(by, ay);
disp('Residues'), disp(R), disp('Poles'), disp(p), disp('Direct Term'),
disp(C);