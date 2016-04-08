function mx = Untitled5( pct,pas,m )
    mx=zeros(m,m);
    for i=1:m+1
        for j=1:m+1
            if(j+i>m+2)
                mx(i,j)=0;
            else
                mx(i,j)=dif(j-1,pct+pas*(i-1),pas);
            end
        end
    end
    
end

