%% 3 a) & b)
Ns = 1e6;

sigmax = 4;
x = sigmax*randn(1,Ns);
[r,lags] = xcorr(x,100,'biased');

stem(lags,r)
axis = ([-100,100,0,20]);
%% 3 c)
N = 200;
K = 5000;
xN = reshape(xN,[N,K]);
Nfft = 256;
XN = fft(xN,Nfft);
Pper = 1/N*abs(XN).^2;
Pper_mean = 1/K*sum(Pper,2); %na 2ª dimensão(média de linhas)
k = -Nfft/2:Nfft/2-1; wn = k*2/Nfft;
plot(wn,fftshift(Pper_mean),[-1,1],[1,1]*sigmax^2,'--');
axis([-1,1,0,20])
xlabel('\omega/\pi'); title('Média de 5000 periodogramas de 200 amostras')
set(gca,'fontsize',14)


%% 4
rx = [1, 0.8512, 0.5662, 0.3598, 0.2128, 0.0594];
R = toeplitz(rx(1:5));
rr = -rx(2:end);
a1 = R/rr;
a = [1;a1];
b02 = rx*a;

Nfft = 512;
S = abs(b02./fft(a,Nfft)).^2;
k = 0:256; wn = k*2/Nfft;
plot(wn,S(k+1))
%%
r = zeros(1,101);
r(1:6) = rx;
for k = 6:100
    r(k+1) = -r(k:-1:k-4)*a1;
end
plot(0:100,r)
%%
R = toeplitz(r(1:10));
rr = -r(2:11)';
a1 = R\rr;
r(1:11) * [1;a1] - b02


%%
x=rand(1,1e6);
c = var(x);
ux = 1/2;
rx(k) = @(k)(ux^2 + c^2*delta(k));
d = rx(0)
%%
Ns = 1e6;

sigmax = 1;
x = sigmax*randn(1,Ns);
[r,lags] = xcorr(x,100,'biased');

stem(lags,r)
axis = ([-100,100,0,20]);
%%
rx = [1, 0.5, 1/3];
R = toeplitz(rx(1:3));
rr = -rx(1:end);
a1 = R/rr;
a = [1;a1];
b02 = rx*a;

Nfft = 512;
S = abs(b02./fft(a,Nfft)).^2;
k = 0:256; wn = k*2/Nfft;
plot(wn,S(k+1))

































