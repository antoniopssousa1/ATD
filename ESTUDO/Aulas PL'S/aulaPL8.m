[x,fs]=audioread('dtmf_56.wav');
figure(1), plot(x)
%soundsc(x,fs) reproduz literalmente o som do ficheiro
N = 640;
M = 160;
Nfft = 1024;
xf = buffer(x, N, N-M, "nodelay");
Ntramas = size(xf,2);
l_chaim = ceil((length(x)-N)/M)+1;
k = 0:Nfft/2;
f = k*fs/Nfft;
imagesc(0:Ntramas,f,db(xf(k+1,:))); axis yx; colorbar; f_row=[697,770,852,941];  f_col=[1209,1336,1447];%freq. das linhas do teclado [Hz]; %freq. das colunas do teclado [Hz]

%%
[x,fs]=audioread('dtmf_56.wav');

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
f_row=[697,770,852,941]; %freq. das linhas do teclado [Hz]
f_col=[1209,1336,1447]; %freq. das colunas do teclado [Hz]
hold on %não apaga o gráfico já feito
for r=1:4, plot([1,Ntramas],[f_row(r),f_row(r)],'w'); end
for c=1:3, plot([1,Ntramas],[f_col(c),f_col(c)],'w'); end
hold off %um novo gráfico vai substituir este
%%
[x,fs]=audioread('audio_56.wav');
%soundsc(x,fs);

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
plot((0:256)/256,abs(X(1:257,724))), grid on
%%
plot(f,db(X(k+1,661)))
axis(0,8000)




































