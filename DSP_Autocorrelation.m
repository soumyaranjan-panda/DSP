clc;
clear all;
close all;
x=input("Enter x(n): ");
l1=input("Enter lower limit: ");
u1=input("Enter upper limit: ");
x1=l1:1:u1;
z=fliplr(x);
l2=-u1;
u2=-l1;
z1=l2:1:u2;
l=l1+l2;
u=u1+u2;
c=l:1:u;
m=length(x);
n=length(z);
X=[x,zeros(1,n)];
subplot(3,1,1);
disp('x(n):');
disp(x);
stem(x1,x,'linewidth',2.5);
title('Input Signal');
xlabel('n-->');
ylabel('x(n)-->');
grid on;
grid minor;
Z=[z,zeros(1,m)];
subplot(3,1,2);
disp('h(n):');
disp(z);
stem(z1,z,'linewidth',2.5);
title('Impulse Response');
xlabel('n-->');
ylabel('x(-n)-->');
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
disp('Auto correlated output of x(n)is:');
disp(Y);
stem(c,Y,'linewidth',2.5);
title('Auto correlation of 2 sequence:');
xlabel('n-->');
ylabel('y(n)-->');
grid on;
grid minor;
