clear
clc
mtx = load('bcsstk32.mat');
%mtx = [1 0 0 0 4 0 2 0 0 0 22 0 0 12 0;0 0 2 0 12 0 22 0 0 0 0 4 0 0 32;23 0 0 2 0 0 0 0 0 1 0 23 0 0 0] 
[val,colidx,rptr] = sparsetocsr(mtx.Problem.A);
val1=val'
columindex=colidx'
rowpointer=rptr'


