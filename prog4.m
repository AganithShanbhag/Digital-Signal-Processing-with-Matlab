%prog 3
n = 0:15;
u = [(n)>=0];
u5 = [(n-5)>=0];
x = u-u5;
y = [1,2,3,4,5];

newSignal = conv(x,y);

n = 1:20

%plot(n, x);title("x");xlabel("Time n");
stem(n, newSignal);title("Convolved Signal");xlabel("Time n");