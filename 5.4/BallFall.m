v=[1;0];
x=[0;10];
h=0.01;%样条间距
p=0.9;%energy loss sqrt
t=0.01;
flag=0;
z=ginput(5);
x1=0:0.01:1;
l=spline(z(:,1),z(:,2),x1);
l(1)=10;
l(102)=10;
x1(102)=1.01;
plot(x1,l)
hold on

while(x(2)>0)
    %碰撞判别
    x=x+v.*t;
    z=x(1)/h
    v
    if(z>=101||z<=0)
        w=[-1;0];
        v=v-2.*w.*(w'*v).*p;
    elseif(x(2)<l(floor(z)+1)+(z-floor(z))*(l(floor(z)+1)-l(floor(z))))
        k=l(floor(z))-l(floor(z)+1);
        w=[k;h];
        w=w./norm(w);
        v=v-2.*w.*(w'*v).*p;
    
    end
    
    
    v=v+[0;-9.8].*t;
    comet(x(1),x(2))
end
hold off