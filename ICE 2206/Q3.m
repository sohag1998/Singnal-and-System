clc;
clear all;
close all;
A = 5;
f = 5;
t = 0 : .01 : 1;
x = A * sin(2 * pi * f * t);
subplot(4, 1, 1);
plot(t, x);
xlabel('time');
ylabel('amplitude');
title('continuous time signal');
grid on;

subplot(4, 1, 2);
stem(t, x);
xlabel('time');
ylabel('amplitude');
title('sampling');
grid on;

x1 = A + x;
subplot(4, 1, 3);
stem(t, x1);
xlabel('time');
ylabel('amplitude');
title('discrete time signal');
grid on;

x2 = round(x1);
subplot(4, 1, 4);
stem(t, x2);
xlabel('time');
ylabel('amplitude');
title('Quantization');
grid on;

x3 = dec2bin(x2);
disp(x3);
