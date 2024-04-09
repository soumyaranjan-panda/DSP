%PROGRAM FOR FOLDING

 clc;
clear all;
close all;

n=(-5:1:5);
y1=y(-n);
subplot(2,1,1);
stem(n,y(n));
xlabel('n');
ylabel('y(n)');
title('Signal y(n)');
grid on;
subplot(2,1,2);
stem(n,y1);
xlabel('n');
ylabel('y(-n)');
title('Signal y(-n)');
grid on;

function x=y(n)
x=(1+n).*(n>=0 & n<=2); %x(n)=1+n;
end

%stem(-n, x)%