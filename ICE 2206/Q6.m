clc;
close all;
clear all;
x = [1, 2, 3, 4];
n1 = -2 : 1;
subplot(6, 1, 1);
stem(n1, x);
axis([-8 10 -2 5]);
xlabel('n');
ylabel('x(n)');
title('x(n)');
grid on;

y = [1, 1, 1, 1];
n2 = 0 : 3;
subplot(6, 1, 2);
stem(n2, y);
axis([-8 10 -2 5]);
xlabel('n');
ylabel('y(n)');
title('y(n)');
grid on;

m = min(min(n1), min(n2)) : max(max(n1), max(n2));
y1 = [];
temp = 1;
for i = 1 : length(m)
    if(m(i) <min(n1) || m(i) > max(n1))
        y1 = [y1, 0];
    else
        y1 = [y1, x(temp)];
        temp = temp + 1;
    end
end
y2 = [];
temp = 1;
for i = 1 : length(m)
    if(m(i) <min(n2) || m(i) > max(n2))
        y2 = [y2, 0];
    else
        y2 = [y2, y(temp)];
        temp = temp + 1;
    end
end
mul = y1 .* y2;
subplot(6, 1, 3);
stem(m, mul);
axis([-8 10 -2 5]);
xlabel('n');
ylabel('x1(n)*x2(n)');
title('x(n)*y(n)');
grid on;        

z = [-2, 3, 0, 1, 5];
n3 = -2 : 2;
subplot(6, 1, 4);
stem(n3, z);
xlabel('n');
ylabel('z(n)');
title('z[n]');
axis([-8 10 -4 6]);
grid on;

s1 = 5;
a = n3 + s1;
subplot(6, 1, 5);
stem(a, z);
xlabel('n');
ylabel('z(n-5)');
title('z(n-5)');
axis([-8 10 -4 6]);
grid on;

s2 = 4;
a2 = n3 - s2;
subplot(6, 1, 6);
stem(a2, z);
xlabel('n');
ylabel('z(n-5)');
title('z(n-5)');
axis([-8 10 -4 6]);
grid on;