%find sys func

zeros = input("Enter the Zeros");
p = input("Enter the poles");
k  = input("enter the gain constant");

[b,a] = zp2tf(zeros,p,k);
disp('b');disp(b);
disp('a');disp(a);