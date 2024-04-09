clc;
clear all;
close all;

x=input("Enter x(n): ");
l1=input("Enter lower limit: ");
u1=l1+length(x)-1;

h=input("Enter h(n): ");
l2=input("Enter lower limit: ");
u2=l2+length(h)-1;

for i = 1:length(h)
    z(i) = h(length(h)+1-i);
end;

h1=-u2:1:-l2;
c=(l1-u2):1:(u1-l2);
m=length(x);
n=length(z);
X=[x,zeros(1,n)];
subplot(3,1,1);
disp('x(n):');
disp(x);
stem((l1:1:u1),x,'linewidth',2.5);
title('Input Signal');
xlabel('n-->');
ylabel('x(n)-->');
grid on;
grid minor;
Z=[z,zeros(1,m)];
subplot(3,1,2);
disp('h(-n):');
disp(z);
stem(h1,z,'linewidth',2.5);
title('Impulse Response');
xlabel('n-->');
ylabel('h(-n)-->');
grid on;
grid minor;
for i=1:m+n-1
    Y(i)=0;
    for j=1:m
    if((i-j+1)>0)
        Y(i)=Y(i)+(X(j)*Z(i-j+1));
    else
    end
    end
end
subplot(3,1,3);
disp('Cross correlated sequence of x(n) & h(n)is:');
disp(Y);
stem(c,Y,'linewidth',2.5);
title('Cross correlated output of 2 sequence:');
xlabel('n-->');
ylabel('y(n)-->');
grid on;
grid minor;
