function S1 = out( img , U , V,alpha)

S1 = zeros(size(img));

for i = 1:3
    [~,S,~] = svd(img(:,:,i));
    S1(:,:,i) = (U(:,:,i) * S(:,:) * V(:,:,i)' - S(:,:))/alpha;
end

end

