clc;
clear all;
close all;

figure(1);
subplot(2, 2, 1);
t = -5:0.1:5;
stem(t, t == 0, 'b');
title('Unit Impulse');
xlabel('Time');
ylabel('Amplitude');

subplot(2, 2, 2);
t = -5:0.1:5;
stem(t, t >= 0, 'b');
title('Unit Step');
xlabel('Time');
ylabel('Amplitude');

subplot(2, 2, 3);
t = -5:0.1:5;
stem(t, max(0, t), 'b');
title('Unit ramp');
xlabel('Time');
ylabel('Amplitude');

subplot(2, 2, 4);
t = -5:0.1:5;
stem(t, max(0, exp(t)), 'b');
title('Exponential');
xlabel('Time');
ylabel('Amplitude');

figure(2);
subplot(2,2,1);
t = 0:0.1:2*pi;
stem(t, sin(t), 'b');
xlabel('Time');
ylabel('Amplitude');
title('Sine Signal');

subplot(2,2,2);
t = 0:0.1:2*pi;
stem(t, cos(t), 'b');
xlabel('Time');
ylabel('Amplitude');
title('Cosine Signal');

subplot(2,2,3);
t = 0:0.1:10;
stem(t, square(t), 'b');
xlabel('Time');
ylabel('Amplitude');
title('Square Signal');

subplot(2,2,4);
t = 0:0.1:11;
stem(t, sawtooth(t, 0.5), 'b');
xlabel('Time');
ylabel('Amplitude');
title('Trianglar Signal');
