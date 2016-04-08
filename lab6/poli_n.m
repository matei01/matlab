function nmf = poli_n( noduri,x )
%POLI_N Summary of this function goes here
%   Detailed explanation goes here
    M=matrice(noduri);
    nmf=fct(noduri(1));
    for i=2:length(noduri)
        p=M(1,i);
        for j=1:i-1
            p=p*(x-noduri(j));
        end
        nmf=nmf+p;
    end
end

