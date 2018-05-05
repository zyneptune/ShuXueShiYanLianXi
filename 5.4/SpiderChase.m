num=4;%蜘蛛数目
r=1;%半径
x=[r;0];
v=1;%速度
h=0.01;
s=[ cos(2*pi/num),-sin(2*pi/num)
     sin(2*pi/num),cos(2*pi/num)]
d=2
hold on
while(d>norm(x-s*x))
    d=norm(x-s*x);
    y=s*x-x;
    x=x+h*y/norm(y);
    y=x;
    for i=1:num
        y=s*y;
        plot(y(1),y(2),'.')
    end
    pause(0.01/v);
end
hold off