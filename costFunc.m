function [J] = costFunc(U,V,I,C,A,sim,T,n,m,x1,x2)

temp0=0;
temp1=0;

for i=1:n
    for j=1:m
        x=U(i,:)*V(j,:)';
        temp1=temp1+I(i,j)*C(i)*((A(i,j)-(1/(1+exp(x)))*(x))^2);
    end
end

for i=1:n
    for j=1:n
        if T(i,j)==1
            temp0=temp0+sim(i,j)*norm(U(i,:)-U(j,:),'fro');
        end
    end
end

J=temp1+x2*temp0+x1*(norm(U,'fro')+norm(V,'fro'));

J=J/2;

end