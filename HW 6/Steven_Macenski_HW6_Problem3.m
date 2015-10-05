function [ y ] = Steven_Macenski_HW6_Problem3( x,handle )
%Inputs the vector x an the handle 
y = handle(x);
fprintf('y is:\t');
fprintf('%.1f\t',y);
fprintf('\n');

plot(x,y);
figure(1)
title(func2str(handle));

end

