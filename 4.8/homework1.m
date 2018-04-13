%%
%1
syms x y z a b;
f1 = int('x^4*sin(x)^2',a,b);
simplify(f1)

clear
% %question 2
syms x y z;
f=sin(x*y)*exp((x^2)*y*sin(z));
d1=diff(f,x,2);
d2=diff(d1,y,2);
d3=diff(d2,z);
eval(subs(d3,{x,y,z},{1,2,1}))

clear
% 3 参数方程求导 dx/dy = (dx/dt) * (dt/dy)
syms x y t a;
x = a*(t - sin(t));
y = a*(1 - cos(t));

x1 = diff(x);
y1 = diff(y);
result = x1/y1

clear

%4
syms y1 y2;
s=dsolve('Dy1=y1-y2','Dy2=y1+y2','y1(0)=1','y2(0)=2')

% %question 5
syms a1 a2 b1 b2 c1 c2 x y;
[x,y]=solve('a1*x+b1*y=c1','a2*x+b2*y=c2');
disp([x,y]);
x=eval(subs(x,{a1,b1,c1},{1,0,1}));
y=eval(subs(y,{a2,b2,c2},{0,1,1}));
disp(x);
disp(y);

clear

%%
% 6 泰勒展开
syms x y;
y = (sin(x)^2)*exp(x);
lin = -1:0.005:1;
t6 = taylor(y,x,0,'order',6);
t8 = taylor(y,x,0,'order',8);
t10 = taylor(y,x,0,'order',10);
y1 = subs(y,x,lin);
y2 = subs(t6,x,lin);
y3 = subs(t8,x,lin);
y4 = subs(t10,x,lin);
plot(lin,y1,'k-',lin,y2,'y-',lin,y3,'r-',lin,y4,'g-');

clear

%% 7
A=[1,2,3;4,1,2;7,5,1];
[v,d]=eig(A)
det(A)

%%
% %question 8
syms x;
lim=limit((cos(x))^(1/x^3));
disp(lim);

clear


clear
%%
%9 隐函数求导
syms x y;
f =  log(x) + exp(-y/x) - exp(1);
t = -diff(f,x)/diff(f,y);
simplify(t)

clear
%% 10
syms x y z;
f10=sin(x*y)+cos(y*z)+tan(x*z)
dx=diff(f10,x)
dy=diff(f10,y)
dz=diff(f10,z)
dzx=-dx/dz
dzy=-dy/dz
solve(x+y==1,x)

clear
%question 11
syms x y;
f=2*x^2*sin(y)+3*x*y^2;
i1=int(f,'y',0,x);
i2=int(i1,'x',0,3);
eval(i2)
clear
%%
%12 Legendre多项式
syms x;
lin = 0:0.01:1;
t = cell(1,11);
t{1} = 1; %元胞 p0
t{2} = x; % p1
for p = 1:9
    t{p+2} = ((2*p+3)*x*t{p+1}-p*t{p+1})/(p+2);
    y = subs(t{p+2},x,lin);
    plot(lin,y,'r--');
    hold on
end




