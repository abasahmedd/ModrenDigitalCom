clc
clear
fs = 1000;           
t = 0:1/fs:1;       

m = sin(2*pi*10*t);  

carrier = cos(2*pi*100*t);  

modulated_signal = (m.^2) .* carrier; 
plot(t, modulated_signal);
title('Nonlinear Modulated Signal');
xlabel('Time');
ylabel('Amplitude');
