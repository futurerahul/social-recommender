function [A,n,m] = initialize()

load('uir.txt');
n=max(uir(:,1));    %no of users
m=max(uir(:,2));    %no of distinct items
A = zeros(n,m);

for i=1:size(uir,1)
    A(uir(i,1),uir(i,2))=uir(i,3);
end

end