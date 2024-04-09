
%PROGRAM FOR SCALING

clc;
clear all;
close all;

n=(-5:1:5);
y1=y(2*n);
y2=y(n/2);
subplot(3,1,1);
stem(n,y(n));
xlabel('n');
ylabel('y(n)');
title('Signal y(n)');
grid on;
subplot(3,1,2);
stem(n,y1);
xlabel('n');
ylabel('y(2n)');
title('Signal y(2n)');
grid on;
subplot(3,1,3);
stem(n,y2);
xlabel('n');
ylabel('y(n/2)');
title('Signal y(n/2)');
grid on;

function x=y(n)
x=(1+n).*(n>=0 & n<=2); %x(n)=1+n;
end