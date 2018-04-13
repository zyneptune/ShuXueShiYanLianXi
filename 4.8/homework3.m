%%
%1
syms x y z a b;
f1 = int('x^4*sin(x)^2',a,b);
simplify(f1)

% 3 参数方程求导 dx/dy = (dx/dt) * (dt/dy)
syms x y t a;
x = a*(t - sin(t));
y = a*(1 - cos(t));

x1 = diff(x);
y1 = diff(y);
result = x1/y1

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
%%
%9 隐函数求导
syms x y;
f =  log(x) + exp(-y/x) - exp(1);
t = -diff(f,x)/diff(f,y);
simplify(t)

clear
%%
%12 Legendre多项式
syms x;
t = cell(1,11);
t{1} = 1; %元胞
t{2} = x;


