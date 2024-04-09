%PROGRAM FOR SIN COS EXPONENTIAL SIGNAL

clc;
clear all; 
close all;
t=(-10:0.001:10);
n=(-10:1:10);

%continuous sin function
f=1/10;
sc=sin(2*pi*f*t);
subplot(3,2,1);
plot(t,sc);
axis([-10 10 -1.5 1.5]); %X and Y Coordinates
xlabel('t');
ylabel('sin t');
title('continuous sin signal');
grid on;

%discrete sin function
f=1/10;
sd=sin(2*pi*f*n);
subplot(3,2,2);
stem(n,sd);
axis([-10 10 -1.5 1.5]); %X and Y Coordinates
xlabel('n');
ylabel('sin n');
title('discrete sin signal');
grid on;

%continuous cos function
f=1/10;
cc=cos(2*pi*f*t);
subplot(3,2,3);
plot(t,cc);
axis([-10 10 -1.5 1.5]); %X and Y Coordinates
xlabel('t');
ylabel('cos t');
title('continuous cos signal');
grid on;

%discrete cos function
f=1/10;
cd=cos(2*pi*f*n);
subplot(3,2,4);
stem(n,cd);
axis([-10 10 -1.5 1.5]); %X and Y Coordinates
xlabel('n');
ylabel('cos n');
title('discrete cos signal');
grid on;

%continuous exponential function
ec=exp(t);
subplot(3,2,5);
plot(t,ec);
axis([-2 3 -1.5 20]); %X and Y Coordinates
xlabel('t');
ylabel('e^t');
title('continuous exponential signal');
grid on;

%discrete exponential function
ed=exp(n);
subplot(3,2,6);
stem(n,ed);
axis([-2 3 -1.5 20]); %X and Y Coordinates
xlabel('n');
ylabel('e^n');
title('discrete exponential signal');
grid on;
