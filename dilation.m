function O=dilation(I,f)
% Erode gray image by odd sized flat filter
[M,N]=size(I); [m,n]=size(f);
m2=round(m/2); n2=round(n/2);
O=I*0;
for r=1:M
    for c=1:N
        sr=max(r-m2,1);
        er=min(r+m2,M);
        sc=max(c-n2,1);
        ec=min(c+n2,N);
        scratch=min(I(sr:er,sc:ec));
        O(r,c)=max(scratch(:));
    end
end