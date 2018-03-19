% % 第一题
% x = [0:0.01:1];
% y = acos(x);
% plot(x,y,'c+-')
% 
% clear
% 
% %第二题
% x = [0:0.01:1];
% y1 = x.^2;
% y2 = sin(x);
% plot(x,y1,'m+-',x,y2,'c+-')
% 
% clear

% %第三题
% x = [-10:0.1:10];
% y1 = ((x.^2)+1).^(1/3);
% x1 = [1:0.1:10];
% y2 = ((x1.^3)-1).^0.5;
% %y2 = [zeros(1,100) y2];
% plot(x,y1,'m.-',x1,y2,'c.-',x1,-y2,'c.-')
% grid
% clear

%第四题
%把积分转化为求和
% y = @(x)(1-x^2)^(3/2);
% x = [0:0.01:4*pi];
% y1 = x.*0;
% n = length(x);
% y1(1) = 0;
% for i = 2:n
%     y1(i) = y1(i-1) + (sin(x(i))-sin(x(i-1)))*y(sin(x(i)));
% end
% plot(x,y1,'b.-')
% grid
% 
% clear

%第五题
% f1 =@(x,y)sin(x.*y).*(x.^2).*(y.^3);
% x1 = [-4:0.3:4];
% y1 = [-4:0.3:4];
% [XX,YY] = meshgrid(x1,y1);
% ZZ = f1(XX,YY);
% figure(1);
% mesh(XX,YY,ZZ);
% figure(2);
% meshc(XX,YY,ZZ);
% figure(3);
% surf(XX,YY,ZZ);
% figure(4);
% pcolor(XX,YY,ZZ);
clear

%第六题
% f1 =@(x,y,z)(x.^2).*(y.^3).*(z.^4);
% x1 = -1:0.1:1;
% y1 = -2:0.2:2;
% z1 = -3:0.3:3;
% [xx,yy,zz] = meshgrid(x1,y1,z1);
% fu = f1(xx,yy,zz);
% xi = [-0.5,0.2];
% yi = [-1.2,1.5];
% zi = [-2,1,2];
% slice(xx,yy,zz,fu,xi,yi,zi);
% colorbar('horiz');

%第七题
% f1 =@(x,y,t)10*exp(1-t)*sin(x).*cos(y);
% x1 = -2*pi:0.1:2*pi;
% x2 = -2*pi:0.1:2*pi;
% n = 500;
% [xx,yy] = meshgrid(x1,x2);
% 
% for i = 0:n
%     fu = f1(xx,yy,10/n*i);
%     mesh(fu);
%     m(i+1) = getframe;
% end
% movie(m,n+1);
clear
%第八题
% f1 =@(u,v)u.*sin(v);
% f2 =@(u,v)u.*cos(v);
% f3 =@(u,v)u;
% 
% U = -5:0.1:5;
% V = -5:0.1:5;
% [uu,vv] = meshgrid(U,V);
% xx = f1(uu,vv);
% yy = f2(uu,vv);
% zz = f3(uu,vv);
% mesh(xx,yy,zz);
%第九题
% n = 10000;
% m = [0.5 0 0 0.5 0 0;0.5 0 0 0.5 0.5 0;0.5 0 0 0.5 0.25 0.5];
% x = zeros(n,1);
% y = zeros(n,1);
% 
% for i = 2:n
%     p = rand();
%     k =0;
%     if p<=0.3333
%         k = 1;
%     end
% 
%     if 0.3333<p && p<=0.6666
%             k = 2;
%     end
%     if 0.6666<p
%         k = 3;
%     end
%     list = m(k,:);
%     a = list(1);
%     b = list(2);
%     c = list(3);
%     d = list(4);
%     e = list(5);
%     f = list(6);
%     
%     x(i) = a*x(i-1)+b*y(i-1)+e;
%     y(i) = c*x(i-1)+d*y(i-1)+f;
% 
% end
% plot(x,y,'b-.');
% %第十题
% fun =@(x,y)sin(x.*y)+x+y;
% ezplot(fun);
% title('sin(x*y)+x+y=0');