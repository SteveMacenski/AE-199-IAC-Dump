% HW 5 Problem 5
% Steven Macenski last modified Oct 3, 2013

a = cos(pi/4);
% Equations below are in the form prescribed on my list for a 13 listed
% forces and 4 listed retainment forces. 

b = zeros(15,16);
b(1,1) = 1;
b(1,7) = a;
b(1,9) = -a;

b(2,8) = 1;
b(2,9) = a;
b(2,7) = a;

b(3,1) = 1;
b(3,2) = -1;

b(4,2) = 1;
b(4,6) = a;
b(4,3) = -a;

b(5,5) = 1;
b(5,6) = a;
b(5,3) = a;

b(6,4) = 1;
b(6,15) = -1;

b(7,3) = a;
b(7,16) = -1;

b(8,10) = 1;
b(8,13) = -1;

b(9,9) = a;
b(9,14) = -1;

b(10,8) = 1;

b(11,11) = 1;
b(11,10) = -1;

b(12,12) = 1;
b(12,6) = a;
b(12,11) = -1;
b(12,7) = -a;

b(13,6) = a;
b(13,7) = a;

b(14,4) = 1;
b(14,12) = -1;

b(15,5) = 1;

c = [0;0;0;0;0;0;0;0;0;10000;0;0;15000;0;20000];
x = b\c;

d = [12 23 34 48 38 37 17 16 15 56 67 78 01 02 03 04];
i = 1;
fprintf('\n\nMembers are defined as the nodes they are between numbered: \n1 2 3 on top from left to right \n4 5 as the fixed points from right to left \nand 6 7 8 on bottom from left to right.\n\nNegative values mean under tension\nPositive values mean under compression\n\n')
for i = 1:length(d)-4;
    % last 4 are the forces on the pinned grounded nodes
    fprintf('The value for member %.0f is %f newtons\n',d(i),x(i));
end