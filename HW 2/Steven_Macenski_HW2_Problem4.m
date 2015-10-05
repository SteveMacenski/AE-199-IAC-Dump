% PRoblem 4
% do some stuff with e
% stop when diff between estimation is equal to error

q = input('Acceptable error 10*.^x, input x:  ');
error = 10.^q;
clear q;
n = 1;
while (exp(-1)-(1-n.^-1).^n) > error
    n = n + 1;
end
fprintf(1,'Lowest value n is %d\n',n)
