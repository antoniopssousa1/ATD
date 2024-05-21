N = 1000;
funcao = @(n)(2/5*cos((4*pi/N)*n)+sin((6*pi/N)*n));
n = 0:2000;
x = funcao(n);
plot(n,x)
%% 
ak = fft(x,N);
k = 0:999;
plot(k,ak)
%%
k = -500:499;
plot(k, fftshift(abs(ak)))
%%
degrau=@(nn)(nn>=0)*1;
k = 1;
h = 30;
n0 = 10;
n1 = h*k;
n = 0:49;
u = n+h;

x1 = sin((2*pi/100)*n);   
x2 = @(n)(n - n1 == 0)*1 + (n-n1 < 0 & n-n1 > 0)*0;
x3 = @(n)degrau(n)-degrau(n-n0);
%x3(n) = x3(n+h);
x33 =@(n) x3(n+h);

plot(n,x3(n));
%%
ak = fft(x1,50);
%stem(n,ak)
bk = fft(x2(n), 50);
%stem(n, bk);
ck = fft(x3(n), 50);
%stem(n,ck)
%%
N = 100;
n = -4:95;
funcao1 = @(n)(-4 <= n & n <= 4)*1 + (5 <= n & n <= 95)*0;
x = funcao1(n);
stem(n,x)
%%
n = 0:120;
x1 = @(n)(1+2*cos(5*(2*pi/120*n))+3*sin(8*(2*pi/120*n)));
u = x1(n);
akk = fft(u,121);
stem(n,akk)































