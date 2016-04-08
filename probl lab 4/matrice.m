function ma = matrice( noduri )
%MATRICE Summary of this function goes here
%   Detailed explanation goes here
    
    ma=zeros(length(noduri));
    a=fct(noduri)
    for j=1:length(noduri)
        ma(j,1)=a(j);
    end
    for k=2:length(noduri)
        for i=1:(length(noduri)-k+1)
            ma(i,k)=(ma(i+1,k-1)-ma(i,k-1))/(noduri(i+k-1)-noduri(i));
        end
    end
end

