degrau=@(nn)(nn>=0)*1;

%n = -10:10; %tempo discreto de n=-10 a n=10; vetor n com 21 pontos.
n = -5:10;
u = degrau(n);
%stem(n,u); % representação de um degrau unitário de -10 a 10
%{
n0 = 2;
f = degrau(n+n0);
stem(n,f)
%}
funcao = @(n)(((1/3).^(n-1))).*degrau(n-1);
x = funcao(n);
funcao(n(1,16))
stem(n, x)
%%

n = -3:12;
n0 = 2;
n1 = 6;
pulso  =  @(n)(degrau(n-n0)-degrau(n-n1-1));
y = pulso(n);
stem(n,y)
%%
nn = 0:50;
degrau=@(n)(n>=0)*1;
xx = degrau(n-5)-degrau(n-11);

h = @(n)(0 <= n & n <= 20).*n + (21 <= n & n < 40).*(40-n);
z = h(nn);

stem(nn, z);

y = conv(xx,z);
size(y);
n0 = -5+0;
n1 = 40+55;
N = (n0:n1);
stem(N,y)
%%
x = imread('coins.png');
imagesc(x); colormap(gray); axis image;
minimal = min(x(:));
hx=[1,0,-1;
2,0,-2;
1,0,-1];
gx=conv2(x,hx,'same');
%%
rampa=@(n) (n>=0).*n;
x=rampa(n-5) - 2*rampa(n-12) + rampa(n-17);
stem(n,x)
%%
x=[5,4,3,3,2,1];
h=[1,2,2,1];
y = conv(x,h);
stem(0:8,y)
%%
x=[1,2,3,4,5;
     4,5,6,5,4;
     6,6,5,4,3];
h=[1,1,1
     1,2,1
     1,1,1];
hx = rot90(h, -1);
hxx = rot90(hx, -1);
y = conv2(x,h, 'same')
yy = conv2(x,hxx, 'same')

































