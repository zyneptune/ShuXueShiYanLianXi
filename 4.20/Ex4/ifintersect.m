function result = ifintersect( line1,line2)
% line1 和 line2 都是2*2矩阵 包含两个点的坐标
%L1是射线 L2是线段
if rank(line1) == 2
    if line1(1,1) == line1(2,1)
        a = 1;
        b = 0;
        c1 = line1(1,1);
    elseif line1(1,2)==line1(2,2)
        a = 0;
        b = 1;
        c1 = line1(1,2);
    else
        x = line1\[1;1];
        a = x(1);
        b = x(2);
        c1 = 1;
    end
else
    a = -line1(1,2)/line1(1,1);
    b = 1;
    c1 = 0;
end

if rank(line2) == 2
    if line2(1,1) == line2(2,1)
        c = 1;
        d = 0;
        c2 = line2(1,1);
    elseif line2(1,2)==line2(2,2)
        c = 0;
        d = 1;
        c2 = line2(1,2);
    else
        x = line2\[1;1];
        c = x(1);
        d = x(2);
        c2 = 1;
    end
else
    c = -line2(1,2)/line2(1,1);
    d = 1;
    c2 = 0;
end
if rank([a,b;c,d]) ~=2
    result = 0;
else
    y = [a,b;c,d]\[c1;c2];
    x = y(1);
    if (x-line2(1,1))*(x-line2(2,1))<0 && x > line1(1,1)
        result =1;
    else
        result = 0;
    end
end

end

