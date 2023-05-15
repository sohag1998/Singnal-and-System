clc;
close all;
clear all;
t = -20 : 1 : 20;
unitstep = t >= 0;
impluse = t == 0;
unitramp = t .* unitstep;

subplot(3, 1, 1);
stem(t, unitstep);
xlabel('time');
ylabel('amplitude');
title('unitstep discrete time');
grid on;

subplot(3, 1, 2);
stem(t, impluse);
xlabel('time');
ylabel('amplitude');
title('impluse discrete time');
grid on;

subplot(3, 1, 3);
stem(t, unitramp);
xlabel('time');
ylabel('amplitude');
title('unitramp discrete time');
grid on;
