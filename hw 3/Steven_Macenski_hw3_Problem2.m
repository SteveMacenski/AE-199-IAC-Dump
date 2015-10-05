% Problem 2 from hw 3
% LAst edited Sept 26th 2013
% Vectorize the following comments

% n = 3;
% x = zeros(n);
% y = x;
% for i = 1:n;
%     x(:,i) = i;
%     y(i,:) = i;
% end 
% y
% x
% creates X = 123 123 123, y = 111 222 333

n = 3;
x = zeros(n);
y = x;
i = 1:3;

V = [1 2 3];
x = repmat([1 2 3],[1,3]);
y = repmat([1 2 3],[3,1]);
fprintf('x = \n%.0f\t %.0f\t %.0f\n %.0f\t %.0f\t %.0f\n %.0f\t %.0f\t %.0f\n',x)
fprintf('y = \n%.0f\t %.0f\t %.0f\n %.0f\t %.0f\t %.0f\n %.0f\t %.0f\t %.0f\n',y)
