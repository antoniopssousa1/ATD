%% ex4
disco_a_rodar(1.1,1,4)
%%
disco_a_rodar(1.9,2,4)
%%
disco_a_rodar(1,5,4)
%% ex3

n = 0:50;
fs  = 250e6;
ent =@(t)(sin(2*pi*(170e6)*t));
T = 1/250e6;
plot(n,ent(n))
%%
f0 = 170e6;
fs = 250e6;
n = 0:50;
T = 1/fs;
teta = 0;
xn = sin(2*pi*f0/fs*n+teta); 
stem(n,xn)
%%
dt = T/100; Tmax = 50*T; t = 0:dt:Tmax;
xc = sin(2*pi*f0*t+teta);
ts = 0:T:Tmax;
plot(t,xc,ts,xn,'o')
xlabel('t[s')
title('x_c(t)','x[n]')
%%
Nfft = 25000;
n = 0:Nfft-1;
teta = 0.3*pi;
xn = sin(2*pi*f0/fs*n+teta);
Xn = fft(xn,Nfft);

k = 0:Nfft/2;w = k*2*pi/Nfft;
f = w/pi*fs/2;
plot(f,abs(Xn(k+1))/Nfft)

%Afinal fa = 80MHZ = fs-f0
%% quiz
disco_a_rodar(1+1/60,1,4)
%%
disco_a_rodar(5/(2*pi),70,4)
%%
f0 = 5;
fs = 70;
n = 0:50;
T = 1/fs;
teta = 0;
xn = sin(2*pi*f0/fs*n+teta); 
stem(n,xn)















































