function [O] = move(I,MV)
%MOVE Summary of this function goes here
%   Detailed explanation goes here

[height,width]=size(I);
O=255*(I*0+1);
A=I/255;
A(A==255)=0;
B=prod(A);
C=prod(A,2);
kw=1;
kn=1;
ke=0;
ks=0;
while(B(kw)~=0)
    kw=kw+1;
end
while(B(width-ke)~=0)
    ke=ke+1;
end
while(C(kn)~=0)
    kn=kn+1;
end
while(C(height-ks)~=0)
    ks=ks+1;
end
if MV(1)>0;
    movx=round(MV(1)*ke);
else
    movx=round(MV(1)*kw);
end
if MV(2)>0
    movy=round(MV(2)*ks);
else
    movy=round(MV(2)*kn);
end

for i=1:height
    for j=1:width
        if i-movy<height && i>movy && j-movx<width && j>movx && ...
            I(i-movy,j-movx)<255
            O(i,j)=I(i-movy,j-movx);
        end
    end
end

end

