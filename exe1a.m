%exercise1a

n = 0:1:5;

%x = -(0.5)^n;

subplot(4,1,1);stem(n,(-0.5).^n);title("Damping sine");
subplot(4,1,2);stem(n,(0.5).^-n);
subplot(4,1,3);stem(n,(2).^-n);

%growing sine


subplot(4,1,4);stem(n,(-0.5).^-n);title("Growing Sine");
