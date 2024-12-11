% time 
N = 2 * 1024 ;
Tmax = 10 ; 
dt = Tmax/(N-1);
t = 0:dt:Tmax ;
%carrier 
Ac = 2;
fc = 4;
wc = 2*pi*fc;
xc = cos(wc*t);
%modulation
Am = 0.5;
fm = 0.5;
wm = 2*pi*fm;
xm = cos(wm*t);
%Am generation
mu = Am/Ac;
xam = Am*xm.*xc + Ac*xc ;

plot(t,xam);