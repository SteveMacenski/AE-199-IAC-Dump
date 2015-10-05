% HW 5 problem 2
% Steven Macenski last edited Oct 2, 2013
clf 
a = [2 9;3 -4];
b = [5;7];
x = a\b;
fprintf('The solution for x1 = %f, the solution for x2=%f.\n',x);
a = 0:.1:3;
hold on
grid on
axis([0 3 -1 1]);
plot(x(1,:),x(2,:),'.k');
% Point proves solution
plot(a,((7-3.*a)./-4));
plot(a,((5-2.*a)./9));

% Whats the ^T mean in terms of the solution?