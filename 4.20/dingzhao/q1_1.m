%1.1 ��ͨ���ַ���
syms x 
f = exp(-x^2)/(1+x^4);
f1 = int(f,x,-inf,inf);
f1 = double(f1);

%Monte Carlo Method
%����10000�������
syms a b c d
a=-3;b=3;c=0;d=2;
x = a + (b-a).*rand(10000,1);
y = c + (d-c).*rand(10000,1);
subs(x);
subs(y);

%Ͷ�㣬���������Ŀ�������ڵĵ�ĸ���k
k = 0;
for i =1:10000
    if y(i)<exp(-x(i)^2)/(1+x(i)^4)
        k = k+1;
    end
end

%ͨ�����ʷ�����������������ΪĿ�����ֵ
area = 12*k/10000;

