a = ones(5,5);%����ȫ1Ԫ������%
b = zeros(3,4);
c = diag([3,2,4]);
d = diag(c);
e = eye(5,5);
f = magic(4);
g = rand(6,4);

clear

A = imread('pic.jpg','jpg');
%ͼ�����%
B = A( 1:120, 1:120, : );
%imshow(B)

clear

savefile = 'save.mat';
a = rand(1,10);
b = ones(10);
save save.mat
c = load(savefile);
save(savefile,'a','b');
d = load(savefile);

clear











