function aprox = aitken( fct, noduri, alpha,epsilon)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    n=length(noduri);
    lmf=zeros(1,n);
    lmf(1)=fct(noduri(1));
    for i=2:n
        lmf(i)=(1/(noduri(1)-noduri(i)))* (fct(noduri(1))*(alpha-noduri(i))-fct(noduri(i))*(alpha-noduri(1)))
    end
    
    if abs(fct(noduri(1))-lmf(2)) < epsilon
        aprox=lmf(2);
        return ;
    end
    k=2;
    while k<n
        for j=k+1:n
            lmf(j)=(1/(noduri(k)-noduri(j)))* (lmf(k)*(alpha-noduri(j))-lmf(j)*(alpha-noduri(k)))
        end
        if abs(lmf(k+1)-lmf(k)) < epsilon
            aprox=lmf(k+1);
            return;
        end
        k=k+1;
    end
    fprintf('no suitable aprox');

end

