
fs = 1000; 
t = 0:1/fs:1-1/fs; 
m1 = sin(2*pi*10*t); 
m2 = sin(2*pi*20*t);
m3 = sin(2*pi*30*t); 

data = [m1; m2; m3];

ofdm_signal = ifft(data, [], 2);
t_final = linspace(0, 1, length(ofdm_signal));

num_subcarriers = size(data, 1);

subplot(2,2,1)
plot(t, m1);
subplot(2,2,2)
plot(t, m2);
subplot(2,2,3)
plot(t, m3);
subplot(2,2,4)
plot(t_final, real(ofdm_signal(1, :)));
