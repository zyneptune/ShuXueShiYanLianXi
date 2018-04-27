%1.2 求解瑕积分

step = 0.0001;
x = 0:step:1;
inte = [0,0.1];
i = 2;

while abs(inte(i)-inte(i-1)) > 1e-9 && i<1/step
    t = x(1,1:i);
    y = sin(t)./sqrt(1-t.^2);
    inte = [inte trapz(t,y)];
    i = i+1;
end


%以下可用于验证上述结果
% syms t
% y=sin(t)/sqrt(1-t^2);
% y1=int(y,t,0,0.999);
% y1=double(y1);