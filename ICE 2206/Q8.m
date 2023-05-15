%Explain and generate sinusoidal wave with different 
%frequency.

clc;
close all;
A=5;
f=100;
%input("Input Frequency : ");
T=1/f;
t=0:T/f:0.1;
y=A*sin(2*pi*f*t);
plot(t,y);
xlabel('T');ylabel('Amplitude');
title('Sinusoidal Wave');