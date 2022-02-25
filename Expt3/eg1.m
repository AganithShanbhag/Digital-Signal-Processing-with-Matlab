% example 1 

clc;
clear all;
close all;

b = [1 0.5];
a = [1 -1.8 0.81]

[r p k] = residuez(b,a); 
disp(['r =' num2str(r')]); 
disp(['p =' num2str(p')]); 
disp(['k =' num2str(k')]);

%pole zero plot
[z p k] = tf2zp(b,a);
disp('Zeros at'); disp(z);
disp('Poles at'); disp(p);
disp("gain Constant is");disp(k);
zplane(b,a);


%freq response

N = 512
[h w] = freqz(b, a ,N)
subplot(211),plot(w,abs(h)),title("magnitude response");
xlabel("Freq in Radians"),ylabel("Amplitude");

subplot(212),plot(w,angle(h)),title("Phase Response");
xlabel("Freq in Radians"),ylabel("Phase in radians");

%unit impulse response of the system
L = 30;
[y n] = impz(b, a, L);
stem(y), title("Impuse Response, h[n]");grid on;
xlabel('sample number');ylabel("Amplitude");

%output of sys for input x(n)
n = 0:100;
u = [n>=0];
x = 3*cos(n*pi/3).*u;
y = filter(b,a,x)
subplot(211),plot(n,x);
subplot(212),plot(n,y);
