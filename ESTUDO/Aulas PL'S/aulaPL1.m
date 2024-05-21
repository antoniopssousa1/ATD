%z = zeros(2,3,4);
%size(z);
%a = [1,2,3]';
%2 * 5 + 3;
%help whos;
%doc whos;
%A = [1,3;4,2];
%b = A(2);
%c = A(:);
%a = [0,3,4,2], a(4), a > 0, a(a > 0)
%A(0)
%a=[0,1,2,3]; c=a==2, a(c)
%a = zeros(3,4);
%n=[0,1,2,3,4], 2.^n
%a=[2,3,4], b=[5,6,7]', a*b
%b * a
%a.*b
%repmat(a,3,1), repmat(b,1,3), repmat(a,3,1).*repmat(b,1,3)
%x=[-inf,-1,0,1,+inf];
%f=2*x-1
%f = 1./(1+exp(-x))+x.^2+1
%x=[-1;1], C=[3,2;2,4], N=size(x,1) %N=2
%f = 1/sqrt((2*pi)^N*det(C))*exp(-0.5*x'*inv(C)*x)
%Nota: 2*pi é escalar, assim como x'*inv(C)*x, 0.5 e det(C).
%a=zeros(1,1000);
%a=1+2j, class(a), whos
%a=2,z=a==0,class(z)
%a={'abc', 2, 'd', [1,2;3,4], true},a{4},a{5}
%help class
%c=class(2),class(c)
%help punct
%help paren
%help colon
%a = 0 : 4
%a = 10 : -1.5 : 2
%for i=1:3, j=i+3, end;
%a=1; c=1;
%if a==1
%c=10;
%elseif a==0
%c=0;
%else
%c=-1;
%end
%c
%1-3*(4/3-1) %esta instrução não resulta exatamente em zero, mas sim em 2^(-52), pois a mantissa de "double" tem 52 bits.
%4/3 não tem representação binária exata: 1,0101010101010101..., repetindo-se na mantissa o padrão 0101 infinitamente.
%O resultado aproximado é: 2^0 + 2^-2+2^-4+2^-6+2^-8+2^-10+2^-12+2^-14+2^-16
%doc eps
%pulso = @(n)(n>=-3 & n<2)*1; %função sem nome de um só argumento: n.
%O carater @ identifica que "pulso" é uma variável da classe "function_handle".
%Uso:
%n=-10:10; %definição do vetor n
%x=pulso(n); %chamada da função com o vetor n
%stem(n,x) %gráfico para sinais em tempo discreto
%axis([-10,10,-0.5,1.5]) %altera os limites x,y do gráfico (decoração)
%xlabel('n'); ylabel('x[n]'); title('pulso de -3 a 1');
%text(-6,1.25,'$x[n]=u[n+3]-u[n-2]$','interpreter', 'latex')
%rampa=@(n) (n>=0).*n; %rampa=0 para n<0 e rampa=n para n>=0
%n=-10:10;
%y=rampa(n+3)-2*rampa(n-1)+rampa(n-5);
%stem(n,y); grid;
%text(-9.8,3.75,'$y[n]=r[n+3]-2*r[n-1]+r[n-5]$','interpreter','latex')
%plot(n,x,n,y),grid on %gráfico de duas linhas
%legend({'x[n]','y[n]'}) %legenda para identificar os sinais
%plot(n,x,'x-',n,y,'o-'),grid on %gráfico com pontos sobrepostos
%legend({'x[n]','y[n]'})

%quiz

%x=cos(1)
%fx=@(n)(n>=0); n=-5:5; stem(n,fx(n))
%f=@(t)(t>-2&t<2).*abs(t); t=-4:0.01:4; x=f(t); plot(t,x);



































