% HW 6 problem 2
% Steven Macenski modified Oct 8

f = @(x) x.^4-8*x.^3+17*x.^2-4*x-20;
g = @(x) x.^2 - 4*x +4;
h = @(x) x.^2 - 4*x - 5;
T = @(x) f(x) - conv(g(x),h(x));

%a
q = f(3) - conv(g(3),h(3));
fprintf('Part A\nf(3)-g(3)*(h(3) = %f\n\n',q);

%b
z = [1 2 3 4 5];
for i = 1:length(z);
w(i) = f(z(i)) - conv(g(z(i)),h(z(i)));
end 
fprintf('Part B\nsolution at x=1 %.0f, x=2 %.0f, x=3 %.0f, x=4 %.0f, x=5 %.0f\n\n',w);

%c
r = fzero(T,0);
y = fzero(T,4);
fprintf('Part C\nRoots at x = 0 is %.0f, and at x = 4 is %.0f\n\n',r,y);

%d
F = [1 -8 17 -4 -20];
G = [1 -4 4];
H = [1 -4 -5];
t = F - conv(G,H);
dd = roots(t);
fprintf('Part D\nRoots are x=%.0f,%.0f the same as in part C.\nThe fzero command finds the root\nnearest to the point chosen\nand if roots returns\nthe same 2 roots then\nfzero found all possible roots\n',dd);
