clc
clear
fs = 1000; 
t = 0:1/fs:1-1/fs; 

m1 = sin(2*pi*10*t);
m2 = sin(2*pi*20*t); 
m3 = sin(2*pi*30*t); 

TDM_signal = [m1, m2, m3];

t_final = linspace(0, 3, length(TDM_signal)); 

figure;
plot(t_final, TDM_signal);
title('TDM Signal');
xlabel('Time (s)');
ylabel('Amplitude');
grid on;
