function [u1,A,v1] = add( img , sign , alpha  )
[m,n,~] = size(sign);
A = zeros(size(img));
u1 = zeros(size(img));
v1 = zeros(size(img));
for i = 1:3
    [U,S,V] = svd(img(:,:,i));
    S(1:m,1:n)= S(1:m,1:n) + alpha * sign(:,:,i);
    [u,~,v] = svd(S);
    A(:,:,i) = U * S * V';
    u1(:,:,i) = u;
    v1(:,:,i) = v;
end

end

