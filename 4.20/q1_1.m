%1.1 普通积分方法
syms x 
f = exp(-x^2)/(1+x^4);
f1 = int(f,x,-inf,inf);
f1 = double(f1);

%Monte Carlo Method
%生成10000个随机点
syms a b c d
a=-3;b=3;c=0;d=2;
x = a + (b-a).*rand(10000,1);
y = c + (d-c).*rand(10000,1);
subs(x);
subs(y);

%投点，计算出落在目标区域内的点的个数k
k = 0;
for i =1:10000
    if y(i)<exp(-x(i)^2)/(1+x(i)^4)
        k = k+1;
    end
end

%通过概率方法计算面积，面积即为目标积分值
area = 12*k/10000;

