clc;
close all;
clear all;

x1 = input('Enter the first sequence x1(n) = ');
t1 = input('Enter the starting time of first sequence t1 = ');
x2 = input('Enter the second sequence x2(n) = ');
t2 = input('Enter the starting time of second sequence t2 = ');

l1 = length(x1);
l2 = length(x2);
ln = l1+l2-1;

X1 = [x1,zeros(1,l2)];
X2 = [x2,zeros(1,l1)];

for i = 1:l2+l1-1
    y(i) = 0;
    for j = 1:l1
        mn = i-j+1;
        if(mn>0)
            
        y(i) = y(i)+X1(j)*X2(mn);
        else
        end
    end
end
a = t1+l1-1;
t = t1:a;
subplot(3,1,1);
stem(t,x1);
grid on;
xlabel('Time--->');
ylabel('Amplitude--->');
title('First Sequence');

a = t2+l2-1;
t = t2:a;
subplot(3,1,2);
stem(t,x2);
grid on;
xlabel('Time--->');
ylabel('Amplitude--->');
title('Second Sequence');

tn = t1+t2;
a = tn+ln-1;
t = tn:a;
subplot(3,1,3);
disp('Convolved Sequence = ');
disp(y);
stem(t,y);
grid on;
xlabel('Time--->');
ylabel('Amplitude--->');
title('Convolved Output');