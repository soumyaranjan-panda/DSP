clc;
clear all;
close all;

x1=input('Enter x1(n) sequence: ');
x2=input('Enter x2(n) sequence: ');

n1=length(x1);
n2=length(x2);
n=max(n1,n2);

a=1:n;
x1=[x1,zeros(1,n-n1)];
a1=1:length(x1);
subplot(3,1,1);
disp('x1(n) is:');
disp(x1);
stem(a1,x1,'linewidth',2)
xlabel('n')
ylabel('x1(n)')
title('input sequence');
grid on;

x2=[x2,zeros(1,n-n2)];
a2=1:length(x2);
subplot(3,1,2);
disp('x2(n) is:');
disp(x2);
stem(a2,x2,'linewidth',2)
xlabel('n');
ylabel('x2(n)');
title('impulse response')
grid on;

Y=zeros(1,n);
for i=0:n-1
    for j=0:n-1
        k=mod((i-j),n);
        Y(i+1)=Y(i+1) + x1(j+1)*x2(k+1);
    end
end

subplot(3,1,3)
disp('Y(n) is:')
disp(Y)
stem(a,Y,'linewidth',2)
xlabel('n');
ylabel('Y(n)');
title('circular convolution output');
grid on;