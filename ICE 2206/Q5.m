clc;
close all;
clear all;
x = [1, 0, 3, 4];
n1 = -2 : 1;
subplot(5, 1, 1);
stem(n1, x);
xlabel('n');
ylabel('x1(n)');
title('x1(n)')
axis([-3 3 0 5]);
grid on

y = [1, 1, 1, 1];
n2 = 0 : 3;
subplot(5, 1, 2);
stem(n2, y);
xlabel('n');
ylabel('x2(n)');
title('x2(n)')
axis([-3 5 0 5]);
grid on


m = min(min(n1), min(n2)) : max(max(n1), max(n2));
y1 = [];
temp = 1;
for i = 1 : length(m)
    if(m(i) < min(n1) || m(i) > max(n1))
        y1 = [y1, 0];
    else
        y1 = [y1, x(temp)];
        temp = temp + 1;
    end
end

y2 = [];
temp = 1;
for i = 1 : length(m)
    if(m(i) < min(n2) || m(i) > max(n2))
        y2 = [y2, 0];
    else
        y2 = [y2, y(temp)];
        temp = temp + 1;
    end
end

add = y1 + y2;
subplot(5, 1, 3);
stem(m, add);
axis([- 3 5 0 7]);
xlabel('n');
ylabel('x(n)+y(n)');
title('addition');
grid on;

z = [3, -1, 0, -4];
n3 = -1 : 2;
subplot(5, 1, 4);
stem(n3, z);
xlabel('n');
ylabel('z(n)');
title('z(n)');
axis([-2 3 -5 4]);
grid on;

c = fliplr(x);
d = fliplr(-n3);
subplot(5, 1, 5);
stem(d, c);
xlabel('n');
ylabel('-z(n)');
title('folding of z(n)');
axis([-3 2 -5 4]);