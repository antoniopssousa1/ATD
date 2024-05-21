n = 0:499;
N = 500;
k = -100:100;
degrau = @(nn)(nn>=0)*1;
n0 = 10;
n1 = 25;

x1 = @(n)(sin(2*pi/100*n));
x2 = @(n)(n-n1 == 0)*1;
x3 = @(n)degrau(n)-degrau(n-n0);
X1 = x1(n);
X2 = x2(n);
X3 = x3(n);
X31 = repmat(X3, 1, 10);
X21 = repmat(X2, 1, 10);
X11 = repmat(X1, 1, 10);

ak = fft(X11,N);
bk = fft(X21,N);
ck = fft(X31,N);

stem(bk)
%%
n = 0:499;
x2 = zeros(1,10*50);
x2(1:50:end) = 1;
stem(n,x2);
%%
k = 1:100;
ak = fft(x1,100)/100;
stem(k,abs(ak))
%%
k = 1:50;
bk = fft(x2,50)/50;
wk = 2*pi/50*k;

x3=[ones(1,5),zeros(1,20-9),ones(1,4)];
ck = fft(x3,50)/50;
stem(wk,abs(ck))
%%
n = 0:499;
y2=0.02*(1*exp(1i*2*pi/50*n)+exp(-1i*2*pi/50*n)+exp(1i*2*pi*2/50*n)+exp(-1i*2*pi*2/50*n));
plot(n,y2)
%%
hLP = fir1(200,1/15);
length(hLP) %201, ordem 200
plot(0:200,hLP)
%%
N = 1024;
HLP = fft(hLP,N);
plot((0:N-1)*2/N, abs(HLP));
%%
y21 = conv(x2, hLP, 'same');
n = 0:499;
plot(n,y2,n,y21)











































 