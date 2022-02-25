b = [1 0 -1]
a = [1 -6 9]
[r p k] = residuez(b,a);
L = 30;
[y, n] = impz(b,a, L)
stem(y),title("Impulse Response h[n]");grid on;xlabel("sample Number");ylabel("Amplitude");

[z p k] = tf2zp(b,a);
disp("zeros at ");disp(z');
disp("poles at ");disp(p');
disp("Gain Const ");disp(k');
zplane(b,a);

n = 0:0.1:100;

u = [n>=0];
x = 3*sin(n*pi/3).*u;
y = filter(b,a,x);
subplot(211),plot(n,x);
subplot(212),plot(n,y);
