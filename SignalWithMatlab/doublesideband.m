fs = 1000; % Sampling frequency
t = 0:1/fs:1-1/fs; % Time vector
f = 50; % Signal frequency
signal = sin(2*pi*f*t); % Real signal

% FFT
N = length(signal);
fft_signal = fft(signal);
frequencies = fs * (-N/2:N/2-1) / N; % Full frequency axis

% Plot
plot(frequencies, abs(fftshift(fft_signal)));
title('Full Spectrum (Negative and Positive Frequencies)');
xlabel('Frequency (Hz)');
ylabel('Amplitude');

