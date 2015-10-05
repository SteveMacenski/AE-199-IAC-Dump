function [ min,max,name ] = Prompting
%Prompting will prompt user for max and min temps


max = input('Input the max temp in degrees F');
min = input('Input the min temp in degrees C');

if min > max
    [max,min] = Switch(max,min);
end

name = input('Input name of file to be made','s');
end

