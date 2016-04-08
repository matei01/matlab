function dif1 = dif( ord,pct,pas )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
    if(ord==0)
        dif1=fct(pct);
    else
        dif1=dif(ord-1,pct+pas,pas)-dif(ord-1,pct,pas)
    end
end

