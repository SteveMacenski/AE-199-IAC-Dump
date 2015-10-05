% Hw 6 problem 5
% Steven Macenski last modified Oct 12,2013


L = @(x) 100./x(1) - x(1)./tan(x(2)) + 2.*x(1)./sin(x(2));
x = fminsearch(L,[10,1,15,20]);

height = x(1)./tan(x(2));
x(3) = 100./x(1) - height;
x(4) = x(3) + 2*height;

x(2) = rad2deg(x(2));
fprintf('d = %.3f, theta = %.3f degrees, b = %.3f\n',x(1:3));

