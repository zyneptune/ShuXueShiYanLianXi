A=imread('office_2','jpg');
B=imread('football','jpg');
A=rgb2gray(A);
B=rgb2gray(B);
[m,n]=size(B);
A1=zeros(m,n);
a=100;

for i=1:m
    for j=1:n
        A1(i,j)=A(i,j);
    end
end

[U,S,V]=svd(double(A1));
S_1=S+a*double(B);
[U1,S1,V1]=svd(double(S_1));
A2=U*S1*V';
for i=i:m
    for j=i:n
        A(i,j)=A2(i,j);
    end
end
subplot(2,1,1);
imshow(A);

A3=zeros(m,n);
for i=1:m
    for j=1:n
        A3(i,j)=A(i,j);
    end
end

[U2,S2,V2]=svd(double(A3));
S_2=U1*S2*V1';
C=(S_2-S)/a;
subplot(2,1,2);
imshow(C);