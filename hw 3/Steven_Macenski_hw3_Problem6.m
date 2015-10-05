% hw 3 problem 6
% W in this case means weight force 
% Steven Macenski modified Sept 27

% X < d,    k= k1           k1x = W         
% X >= d,   k= k1 + 2k2    xK1 + (2k2)x = W

%(k1 + 2k2)(x+.1) = W     



W = input('Input weight force of W in Newtons:  ');
k1 = 10.^4;
k2 = 1.5*10.^4;
d = .1;

X = W./k1;

if X < d;
    X = X;
elseif X >= d;
    X = ((W+.2.*k2)./(k1 + 2.*k2));
end 
fprintf(1,'\n\n')
fprintf(1,'The deflection is %0.4f\n',X)
fprintf(1,'\n\n')



w = 0:1000;
ww = 1000:3000;
x = w./k1;
xx = ((ww+.2.*k2)./(k1 + 2.*k2));
hold on
grid on
plot(w,x);
plot(ww,xx);
