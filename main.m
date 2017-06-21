clear
clc
mtx = load('bcsstk32.mat');
mtx=mtx.Problem.A;
%mtx = [1 0 0 0 4 0 2 0;0 0 2 0 12 0 22 0;23 0 0 2 0 0 0 0;0 56 0 0 0 4 0 0;0 0 0 44 0 0 0 0;0 0 2 3 0 2 0 0;0 4 0 0 9 23 0 18;0 0 0 1 0 29 0 0] 
[val,colidx,rptr] = sparsetocsr(mtx);
val;
colidx;
rowpointer=rptr';


%%
N=size(mtx,1);
vector=rand(size(rptr,1),1);
result=zeros(N,1);

for i=1:1:N-1
    for k=rptr(i):1:rptr(i+1)-1
        result(i) = result(i) + val(k)*vector(colidx(k));
    end
end

result;
result2 = mtimes(mtx,vector);

%%
x = conjgrad(mtx,vector,1e-10)


