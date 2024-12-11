clc
clear
fs = 1000;  
t = 0:1/fs:1-1/fs;  
m1 = sin(2*pi*10*t); 
m2 = sin(2*pi*20*t); 
m3 = sin(2*pi*30*t); 
c1 = [1, -1, 1, -1];  
c2 = [1, 1, -1, -1];  
c3 = [-1, 1, -1, 1];  
repeated_c1 = repmat(c1, 1, ceil(length(m1)/length(c1)));
repeated_c2 = repmat(c2, 1, ceil(length(m2)/length(c2)));
repeated_c3 = repmat(c3, 1, ceil(length(m3)/length(c3)));
s1 = m1 .* repeated_c1;  
s2 = m2 .* repeated_c2;  
s3 = m3 .* repeated_c3;  
CDM_signal = s1 + s2 + s3;
plot(t, CDM_signal);
title('CDM Signal');
xlabel('Time');
ylabel('Amplitude');