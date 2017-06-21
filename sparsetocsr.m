function [val,colidx,rptr] = sparsetocsr(mtx)
val=[];
%[r,c]=find(mtx)
colidx=[];
rptr=[];
for i=1:1:size(mtx,1)
    %size(rptr,1)
    %i
    %val 
    if size(rptr,1) == 0
        rptr=[1];
    elseif size(rptr,1)<i
        rptr=[rptr;size(val,2)+1];
    end
    [rtmp,ctmp,valtemp] = find(mtx(i,:));
    val=[val,valtemp];
    %val=[val;mtx(i,j)];
    colidx=[colidx,ctmp];
    
    end
end

