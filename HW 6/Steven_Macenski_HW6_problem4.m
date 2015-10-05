% HW 6 problem 4

% Steven macenski last modified oct 8

%a
h = @(x) exp(1).^(-.2.*x).*sin(x+2)-.1;
X = 0:10;
plot(X,h(X));
figure(1)
grid on

%b
fprintf('\n\nPart B\nAccording to the graph, \nthere are 3 roots on the function over the interval\n\n');


%c
for i = 1:length(X);
    q(i) = fzero(h,i);
end 

fprintf('Part C\n%f %f\n%f %f %f\n%f %f %f %f %f %f\n\n',q)
fprintf('From this, we can see that there are 3 different roots in the interval\n');

