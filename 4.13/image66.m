lena = im2double(imread('lena.jpg'));
sign = im2double(imread('sign.jpg'));
alpha = 0.1;
[m,n,t] = size(sign);
A = zeros(size(lena));
u1 = zeros(size(lena));
v1 = zeros(size(lena));
for i = 1:3
    [U,S,V] = svd(lena(:,:,i));
    S(1:m,1:n)= S(1:m,1:n) + alpha * sign(:,:,i);
    [u,s,v] = svd(S);
    A(:,:,i) = U * S * V';
    u1(:,:,i) = u;
    v1(:,:,i) = v;
end
imshow(A);
S1 = zeros(size(lena));
for i = 1:3
    [U,S,V] = svd(A(:,:,i));
    S1(:,:,i) = (u1(:,:,i) * S(:,:) * v1(:,:,i)' - S(:,:))/alpha;
end
imshow(S1(1:m,1:n,:));