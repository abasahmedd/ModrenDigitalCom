fs = 1000;
fd = 50 ;
f = 5;
a = 1 ;
t = 0 : 1/fs : 1 - 1/fs ;
m = a * sin(2*pi*f*t);
N = length(t)
fftm = abs(fft(m,N));
fc = 100 ;
ac = 2 ;
mc = ac * sin(2*pi*fc*t);
am_s = (ac + m ) .* sin(2*pi*fc*t);
fm_s = ac .* sin(2*pi*fc*t + (fd/f) .* sin(2*pi*f*t) );
fftam = abs(fft(am_s,N));
fftfm = abs(fft(fm_s,N));
freq = fs*(0:(N/2))/N;
subplot(2,2,1)
plot(freq,fftm(1:N/2+1));
subplot(2,2,2)
plot(freq,fftam(1:N/2+1));
subplot(2,2,3)
plot(freq,fftfm(1:N/2+1));
