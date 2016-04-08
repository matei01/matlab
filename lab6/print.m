function y = print( noduri,x )
%PRINT Summary of this function goes here
%   Detailed explanation goes here
    y=zeros(1,length(x));
    for i=1:length(x)
        y(i)=poli_n(noduri,x(i));
    end
    plot(x,y);
    hold on;
    plot(x,fct(x));

end

