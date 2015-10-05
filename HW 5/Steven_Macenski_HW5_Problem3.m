 % HW 5 problem 3
 % Steven Macenski last modified Oct 2,2013
c = -10:10;
 a = [1/11 -5/11 -2/11;6/13 3/13 1/13;7/10 3/10 -5/10];
 b = [c;c;c];
 x = a\b;
 fprintf('Solutions are 3c, -2c, 1c\n');
plot(c,x)
% 3c, -2c, 1c are the solutions 
