%{
fx=@(n)cos(6*pi/17*n)+randn(size(n)); n=0:100; x=fx(n);
gx=@(n)cos(2*pi/20*n)+1j*sin(2*pi/20*n); n=0:100; x=fx(n); plot(x)

n = 0:100;
x = fx(n);
z = gx(n);
plot(n, z);
xlabel('n');
ylabel('f(n)');
title('Plot of the Function');
%}


load humanactivity.mat
whos
Description
%{
edges = [0.5 1.5 2.5 3.5 4.5 5.5];
histogram(actid, edges)
%}
%{
boxplot(feat', actnames(actid))
a5 = feat(actid==5,:); %size 2653x60
edges = [0 1 2 3 4 5 6 7 8 9 10 20 30 40 50 60 70 80 90 100 150 200 500 800 1000 1800];
%histogram(a5, edges)
variancia = var(a5);
n = 1:60;
plot(n, variancia)
%}
%{
a4 = feat(actid == 4,:);
boxplot(a4)
%}
%{
a1 = feat(actid == 1,:);
media = mean(a1);
n = 1:60;
plot(n, media)
media_g = mean(media);
desv_p = std(media);
%}
%{
f=@(t)(t>1&t<=2)*2.*(t-1)+(t>2&t<3)*2.*(3-t);
t=-4:4; %plot(t,f(t));

g = f(t);
h = f(-t);
k = (g+h)/2;
plot(t,k);
%}
%{
n=-10:10; x = cos(3*n)+sin(4*n); stem(n,x);
x_s = x.^2;
bun = sum(x_s);
%}















































































