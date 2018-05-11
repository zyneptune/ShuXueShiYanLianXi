m1=1;
m2=1;
M=m2/(m1+m2);
dt=0.05;
g=9.8;
l=1;
x=0;
theta=10*pi/360;
dthe=0;
dx=0;
HAHAHA = -1:0.01:1;
HAHAHA2 = zeros(1,201);


while(true)
    dthe=dthe+(-M*cos(theta)*sin(theta)*(dthe)^2-g/l*sin(theta))/(1-M*cos(theta))*dt;
    dx=(M*g*sin(theta)*cos(theta)+M*l*sin(theta)*(dthe)^2)/(1-M*cos(theta))*dt;
    theta=theta+dthe*dt;
    x=x+dx*dt;
    hold off
    plot(HAHAHA2,HAHAHA,'-.')
    hold on
    plot(HAHAHA,HAHAHA2,'-r')
    axis([-0.1 0.1 -1 0.05])
    AA = linspace(x,x+l*sin(theta));
    BB = linspace(0,-l*cos(theta));
    plot(AA,BB,'-b')
    comet(x,0)
    comet(x+l*sin(theta),-l*cos(theta)) 

    pause(0.05);
end