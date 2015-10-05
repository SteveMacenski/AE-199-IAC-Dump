function [ Apprx ] = LimitApprx
%LimitApprx Calculate the limit approximation of the e.^x value for x
%inputted

x = input('Input x value');
n = input('Input n value');

if n <= 0 
    fprintf('Please choose n to be above 1\n');
    n = input('Input n value\n');
end



Approx = (1+(1./n)).^(n.*x);
fprintf('Value is %f using Limit Approximation\n',Approx);

error = exp(x) - Approx 
fprintf('The error between actual value and approximation is %f\n',error);

end

