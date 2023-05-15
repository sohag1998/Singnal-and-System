clc;
clear all;
close all;
f = -2 : .01 : 2;
x = 4 * sinc(4 * f);

subplot(3, 1, 1);
plot(f, x);
xlabel('time');
ylabel('amplitude');
title('real part');
grid on;

subplot(3, 1, 2);
plot(f, abs(x));
xlabel('time');
ylabel('amplitude');
title('magnitude part');
grid on;

subplot(3, 1, 3);
plot(f, angle(x));
xlabel('time');
ylabel('amplitude');
title('phase part');
grid on;