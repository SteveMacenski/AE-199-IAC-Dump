% HW 4 Problem 3
% Steven macenski modified Sept 28 2013

x = [0 .1 .2 .3 .4 .5 .6 .7 .8 .9 1];
y = [-.447 1.978 3.280 6.160 7.080 7.340 7.660 9.560 9.480 9.300 11.200];

a = polyfit(x,y,2);
fprintf('\n Equation \n%.3fx^2 + %.3fx + %.3f\n\n',a);

hold on
plot(x,y,'ok');
plot(x,-9.811.*x.^2 + 20.129.*x + -0.032,'-k');