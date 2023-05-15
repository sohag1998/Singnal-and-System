%DFT and IDFT
clc;
close all;

x = input('Enter the input sequence: ');
N = length(x);
fprintf('The length of sequence: %d\n', N);
subplot(3,1,1);
stem(x);
xlabel('n values');
ylabel('Amplitude');
title('Input values');
grid on;
y = zeros(1,N);
for k=0:N-1
    for n=0:N-1
        y(k+1) = y(k+1) + x(n+1)*exp((-2*1i*pi*n*k)/N);
    end
end
disp('DFT values: ');
disp(y);
subplot(3,1,2);
stem(y);
xlabel('n values');
ylabel('Amplitude');
title('DFT values');
grid on;

%IDFT 
N = length(y);
z = zeros(1,N);

for k=0:N-1
    for n=0:N-1
        z(k+1) = z(k+1) + (1/N)*x(n+1)*exp((2*1i*pi*n*k)/N);
    end
end
disp('IDF values: ');
disp(z);
subplot(3,1,3);
stem(z);
xlabel('n values');
ylabel('Amplitude');
title('IDFT values');
grid on;





