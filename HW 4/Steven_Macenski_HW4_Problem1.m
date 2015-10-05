% HW 4 problem 3
% Last Edited Sept 28 2013
f = [1 -3 -10 27 10 -24];
a = roots(f);
fprintf('\nThe roots are %.3f, %.3f, %.3f, %.3f, %.3f\n',a);
x = -4:.1:4;
plot(x,x.^5-3.*x.^4-10.*x.^3+27.*x.^2+10.*x-24);
axis([-4 4 -10 60]);
grid on
figure(1)