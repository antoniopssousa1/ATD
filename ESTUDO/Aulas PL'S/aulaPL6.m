degrau  = @(nn)(nn >= 0)*1;
f = degrau(n);
h = @(n)((3/5).^n).*(f);
H = @(eijw)(1/(1-(3/5)*e.^(-jw)));
n = -10:20;
g = h(n);
stem(n,g)
%%

hh = @(n,a)(n>=0).*a.^n;
n = -10:20;
figure(1); stem(n, hh(n,(3/5)))
%%
N=200;k = -N/2:N/2; w = k*2*pi/N;
a = 3/5;
H = 1./(1-a*exp(-1j*w));
size(H)
figure(1);plot(w/pi,abs(H));
figure(2);plot(w/pi,angle(H)/pi);
%%
n = 0:20;
h =zeros(size(n));
h(1) = 1;
for i = 1:20
    h(i+1) = a*h(i)+0;
end
max(abs(h-hh(n,a)))
stem(n,h)
%%
n = 0:250;
x = cos(2*pi/25*n);
plot(n,x)
%%
y = filter(1,[1,-a],x);
plot(n,x,n,y);
%%
A = 2.24904; phi = -0.108935*pi;

plot(n,x,n,y,n,A*cos(2*pi / 25*n + phi))
%% quiz
n=0:250; x= cos(2*pi/20*n);
plot(n,x)
%%
y = filter(1,[1,-(0.8)],x);
plot(n,x,n,y);
%%
A1 = 2.3324; phi1 = -0.29527*pi;
A2 = 2.7352; phi2 = -0.10715*pi;
A3 = 2.6324; phi3 = -0.29527*pi;
A4 = 2.9073; phi4 = -0.25527*pi;
A5 = 2.5324; phi5 = -0.12727*pi;
A6 = 2.5324; phi6 = -0.09715*pi;
A7 = 5; phi = 0;



plot(n,x,n,y,n,A4*cos(2*pi / 25*n + phi4))





























