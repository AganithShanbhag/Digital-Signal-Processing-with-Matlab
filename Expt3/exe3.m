%exp 3

a = [1  0 0.81];
b = [1, -1]
y = [2 2]
xic = filtic(b,a,y);


bx = [0 0.49 -0.7]
ax = [1 0 0]

ay = conv(a, ax);
by = conv(b, bx) + conv(xic,ax);

[r p k] = residuez(by,ay);

disp('Residues'),disp(r);disp('poles');disp(p);
disp("direct term");disp(k);

n = 0:20;
u1 = [n>=(-1)]
x = ((0.7).^n).*u1

y1 = filter(b,a,x);
subplot(211),plot(n,x);title("x(n)");
subplot(212),plot(n,y1),title("Response h(n)");
L = 30;
[y2, n ] = impz(by, ay, L);

stem(y2),title("Impulse Response h[n]");grid on;

xlabel("sample number");ylabel("amplitude");


