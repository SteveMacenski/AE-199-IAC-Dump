%create a script to apprx the derivative of x^2 
% Use only vectoriation with no for or while loops 
% Steven Macenski, last edited Sept 17th 2013
% IF CODE ONLY USED FOR ERROR CHECKING AND PRINTING AS VIDEOS SHOWED

xInt = input('Input x-interval as [a b]:  ');
if length(xInt) ~= 2
    disp('ERROR: Please input interval of length two in the form [a b]:');
end 
N = input('Input number of points in interval:  ');
if N < 2   
    disp('ERROR: Please input at least 2 points');
end 

x = linspace(xInt(1),xInt(2),N);
h = x(2) - x(1);




j = 1;
k = N;
ii = 2:length(x)-1;
appx_slope(j) = (x(j+1).^2 - x(j).^2)/h;
appx_slope(ii) = (x(ii+1).^2 - x(ii-1).^2)/(2*h);
appx_slope(k) = (x(k).^2 - x(k-1).^2)/h;

fprintf(1,' appx   exact\n');
fprintf(1,' ====   =====\n');
for i = 1:length(x);
    fprintf('%.4f %.4f\n',appx_slope(i),2.*x(i));
end 