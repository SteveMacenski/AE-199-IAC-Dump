function [ Approx ] = TaylorApprx
%TaylorApprx Approximates e.^x from the taylor polynomial definition

x = input('Input x value');
n = input('Input n value');

if n < 0
    fprintf('Please input value of n above 0');
    n = input('Input n value');
end

n = 0:n;
Approx = sum((x.^n)./(factorial(n)));


fprintf('Value is %f using Limit Approximation\n',Approx);

error = exp(x) - Approx 
fprintf('The error between actual value and approximation is %f\n',error);





end

