% %question 2
% syms x y z;
% f=sin(x*y)*exp((x^2)*y*sin(z));
% d1=diff(f,x,2);
% d2=diff(d1,y,2);
% d3=diff(d2,z);
% eval(subs(d3,{x,y,z},{1,2,1}))
% 
% %question 5
% syms a1 a2 b1 b2 c1 c2 x y;
% [x,y]=solve('a1*x+b1*y=c1','a2*x+b2*y=c2');
% disp([x,y]);
% x=eval(subs(x,{a1,b1,c1},{1,0,1}));
% y=eval(subs(y,{a2,b2,c2},{0,1,1}));
% disp(x);
% disp(y);
% 
% %question 8
% syms x;
% lim=limit((cos(x))^(1/x^3));
% disp(lim);
% 
% %question 11
% syms x y;
% f=2*x^2*sin(y)+3*x*y^2;
% i1=int(f,'y',0,x);
% i2=int(i1,'x',0,3);
% eval(i2)