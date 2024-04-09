clc;
clear all;
close all;

x = [2 5 5 2 1 6 2];
y = [1 3 5];
z = conv(x, y);
disp(z);
subplot(3,1,1);
stem(x);
title('x');
subplot(3,1,2);
stem(y);
title('y');
subplot(3,1,3);
stem(z);
title('x*y');