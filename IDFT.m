clc;
clear all;
close all;
x = input('Enter Sample Signal x:');
disp(x)
N =  length(x);
Y = zeros(1, N);
y = conj(x);
for k = 1 : N
    for n = 1 : N
        Y(k)=Y(k)+(y(n)*exp(1i*2*pi*(n-1)*(k-1)/N))/N;
    end
end
disp(Y);