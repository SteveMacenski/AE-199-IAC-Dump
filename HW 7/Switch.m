function [ max,min ] = Switch( max,min )
%Switch switches values of max and min 


if min > max;
    e = min;
    q = max;
    max = e;
    min = q;
end 


end

