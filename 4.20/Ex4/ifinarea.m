function result = ifinarea( point , area )
[a,~] = size(area);
area(a+1,:) = area(1,:);
sum = 0;
A = [point(1),point(2);0,point(2)];
for i = 1:a
    B = area(i:i+1,:);
    sum = sum + ifintersect(A,B);
end
result = mod(sum,2);
end

