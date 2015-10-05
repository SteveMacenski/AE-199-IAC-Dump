% problem 2 hw 4
% Steven Macenski last edited Sept 28 2013

x = [.45 .5 .55];
y = [.2025 .25 .3025];

a = polyfit(x,y,2);
fprintf('\n\nEquation: \n%.3fx^2 + %.3fx + %.3f\n',a)
Xsp = .5;
slope1 = a(1,1).*2.*Xsp;
fprintf('\nSlope at point (.5,.25) is %.3f\n',slope1);

h = .55-.45;
AppxSlope = (y(3) - y(1))/(2*h);
fprintf('\nAppx Slope at (.5,.25) is %.3f\n',AppxSlope);

% The Appx slope is 1/2 of the actual slope at that point 