clc
clear
fs = 1000;           
t = 0:1/fs:1;       

m = sin(2*pi*10*t);  

carrier = cos(2*pi*100*t);  

%modulated_signal = (m.^2) .* carrier; 
%modulated_signal = atan(m) .* carrier; 
%modulated_signal = exp(m) .* carrier; 
modulated_signal = tanh(m) .* carrier; 

plot(t, modulated_signal);
title('Nonlinear Modulated Signal');
xlabel('Time');
ylabel('Amplitude');
