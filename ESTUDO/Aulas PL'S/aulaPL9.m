%% problema1
a1 = 1/2j*exp(2);
abs(a1)

%%
f0 = 1000;
%teta = 2;
fs = 10000;
n = 0:fs-1;
x = sin(2*pi*f0*n/fs);

%%
T = 10;
N = T*50;
n = 0:500-1;
x = sin(2*pi*f0*n/fs);
plot(n,x,n,x,'.')
%%
Nfft1 = 500;
Nfft2 = 512;
Nfft3 = 8192;

X1 = fft(x,Nfft1);
X2 = fft(x,Nfft2);
X3 = fft(x,Nfft3);

k1 = 0:Nfft1/2; k2 = 0:Nfft2/2 - 1; k3 = 0:Nfft3/2-1;
w1n = k1*2/Nfft1; w2n = k2*2/Nfft2; w3n = k3*2/Nfft3;
figure(1); plot(w1n, abs(X1(k1+1)));
figure(2); plot(w2n, abs(X2(k2+1)));
figure(3); plot(w3n, abs(X3(k3+1)));
%%
plot(w1n, abs(X1(k1+1)), '*', w2n, abs(X2(k2+1)),'-',w3n, abs(X3(k3+1)))
%% problema2
[x,fs]=audioread('TIMIT_TRAIN_DR1_FCJF0_SA1.WAV');
dura = length(x)/fs*1000;
N = 640;
L = 160;
Nfft = 1024;
xf = buffer(x,N,N-L,'nodelay');

X = fft(xf,Nfft);
k = 0:Nfft/2;
Ntramas = size(xf,2);
m = 0:Ntramas;
f = k/Nfft*fs;
imagesc(m,f,db(X(k+1,:))); axis xy
%% 
n0 = 7501;
xx = x(n0:n0+512-1);
plot(xx)

Nfft = 512;
XX = fft(xx,Nfft);
kc = Nfft/8;
E = sum(xx.^2);
E2 = sum(abs(XX).^2)/Nfft;
E3 = (XX(1)^2 + XX(Nfft/2+1)^2+2*sum(abs(XX(kc+2:Nfft/2)).^2))/Nfft;

%energias acima e abaixo de 2kHz
E2kinf = (XX(1).^2 +2*sum(abs(XX(2:kc+1)).^2))/Nfft;
E2ksup = (XX(Nfft/2+1)^2+2*sum(abs(XX(kc+2:Nfft/2)).^2))/Nfft;

%%
w0=2*pi*1000; 


x = @(t)( 1 + 2*cos(w0*t) + cos(4*w0*t));
fs=10000;
n = 0:49;
t = n/fs;
xx = x(t);

Nfft = 50;
XX = fft(xx,Nfft);
kc = Nfft/8;
E = sum(xx.^2);
E2 = sum(abs(XX).^2)/Nfft;
E3 = (XX(1)^2 + XX(Nfft/2+1)^2+2*sum(abs(XX(kc+2:Nfft/2)).^2))/Nfft;














