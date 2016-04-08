function ma = stirling(t,m  )
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
    ma=zeros(t+1,m+1);
    ma(1,1)=1;
    for k=2:m+1
        for j=k:t+1
            ma(j,k)=ma(j-1,k-1)-(j-2)*ma(j-1,k)
        end
    end
end

