clc
clear
t1 = 0 : 1/1000 : 1 ;
t2 = 1 - 1/1000 : 1/1000 : 2 - 1/1000;
t3 = 2 - 1/1000 : 1/1000 : 3 - 1/1000;
t4 = 3 - 1/1000 : 1/1000 : 4 - 1/1000;

s1 = -cos(2*pi*4*t1) - sin(2*pi*9*t1) ; 
s2 = +cos(2*pi*7*t2) + sin(2*pi*2*t2) ; 
s3 = +cos(2*pi*5*t3) - sin(2*pi*7*t3) ; 
s4 = -cos(2*pi*6*t4) + sin(2*pi*8*t4) ; 
data = [s1;s2;s3;s4];
signal = ifft(data,1001,2)
subplot(2,2,1)
stem(signal, 'b', 'filled');
grid on;

subplot(2,2,3)
fft_signal = fft(signal);
stem(abs(signal));
grid on;
subplot(2,2,2)
plot(t1,s1)
hold on 
plot(t2,s2)
grid on;
subplot(2,2,4)
plot(t3,s3)
hold on
plot(t4,s4)
grid on;
