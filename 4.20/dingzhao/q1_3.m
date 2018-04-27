%1.3 ��ͨ���ַ���
syms x y
f = 1+x+y;
f1 = int(f,x,-sqrt(-y^2+2*y),sqrt(-y^2+2*y));
f2 = int(f1,y,0,2);
f2 = double(f2);

%Monte Carlo Method
%ȡ�����80000��
syms a b c d e f
a=-1;b=1;c=0;d=2;e=0.5; f=3.5;
x = a + (b-a).*rand(80000,1);
y = c + (d-c).*rand(80000,1);
z =  e +(f-e).*rand(80000,1);
subs(x);
subs(y);

%Ͷ�㣬�������������ڵĵ�ĸ���k
k = 0;
for i = 1:80000
    if x(i)^2+y(i)^2-2^y(i)<=0 && x(i)+y(i)+1>=z(i)
        k = k+1;
    end
end

%ͨ�����ʷ������������������ΪĿ�����ֵ
volume = 16*k/80000;