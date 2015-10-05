function [ a,b ] = CalcData(c,theta)
%CalcData Calculates side lengths a,b for inputed data c theta

a = c*cos(theta);
b = c*sin(theta);

end

