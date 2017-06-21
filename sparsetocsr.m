function [val,colidx,rptr] = sparsetocsr(mtx)

[rows,cols] = size(mtx);
val=[];
colidx=[];
rptr=[];
for i=1:1:rows
    for j=1:1:cols
       if mtx(i,j) ~0;
           val=[val;mtx(i,j)];
           colidx=[colidx;j];
           if size(rptr,1)<i;
           rptr=[rptr;size(val,1)];
           end
       end
    end
end

end
