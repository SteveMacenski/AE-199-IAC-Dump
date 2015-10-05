% HW 6 problem 1
% Steven Macenski modified Oct 8

fun = @(x) x.^2-sin(x)+x.^(-1);

%a
f0 = fun(0);
f1 = fun(1);
fpi2 = fun(pi/2);
fprintf('\nPartA\nf(0) = %f, f(1) = %f, f(pi/2) = %f\n\n',f0,f1,fpi2);

%b
x = [0 1 pi/2 pi];
i = 1:length(x);
z = fun(x(i));
fprintf('Part b\nValues vectorized f(0) = %f, f(1) = %f, f(pi/2) = %f, f(pi) = %f\n\n',z);

%c 
x = linspace(-1,1);
plot(x,fun(x));
figure(1)