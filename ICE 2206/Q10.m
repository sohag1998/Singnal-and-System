clc;
clear all;
close all;
w = [0 : 1 : 500] * (pi / 500);
H = exp(j * w) ./ (exp(j * w) - .9 * ones(1, 501));
magH = abs(H);
angH = angle(H);
subplot(2, 1, 1);
plot(w / pi, magH);
title('Magnitude response');
xlabel('frequency in pi unit');
ylabel('Mangnitude');
grid on;

subplot(2, 1, 2);
plot(w / pi, angH / pi);
title('phase response');
xlabel('frequency in pi unit');
ylabel('phase in pi unit');
grid on;