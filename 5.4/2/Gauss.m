n=3
syms A0 A1 ;
A = sym('A',[1,(n+1)/2]);
x = sym('x',[1,(n+1)/2]);
% L=2./([1:n+1].*2+1);
%sub=0:(n-1)/2;
% L_odd=pi*factorial(sub.*2)./((factorial(sub))^2.*(4.^sub));
% for i=1:(n+1)/2
%     L=[L,L_odd(i),0]
% end
% L=factorial(0:n);
% L=factorial(0:n)./4;
for j=1:0.5*(n+1)
   L(2*j)=0;
   L(2*j-1)=2/(2*j-1);
end
for i=1:n+1
    Coe(i,1:2)=x.^(i-1);
end
Coe=Coe*A';
solve(Coe==L')