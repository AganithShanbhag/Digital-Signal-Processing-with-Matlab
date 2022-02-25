%Solved prg 5

clc;
cloase all;
clear all;
N = 20;
b = [5 0 0];
a = [1 -0.6 -0.16];
f =[1, zeros(1,N-1)]
h = filter(b,a,f);
n = 0:1:N-1;
stem(n,h);title("Unit Impulsde Response, h[n]"),xlabel("n"), ylabel("Amplitude");
