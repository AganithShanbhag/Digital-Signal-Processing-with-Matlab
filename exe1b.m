t = linspace(-3,2*3,121);
x = 1.15*square(2*t, 25);

y = 1.15*square(2*t, 50);

z = 1.15*square(2*t, 75);

subplot(4,1,1);plot(t/3,x,'.-');title("25% DC");

subplot(4,1,2);plot(t/3,y,'.-');title("50% DC");


subplot(4,1,3);plot(t/3,x,'.-');title("75% DC");

xlabel('t / \pi')
grid on