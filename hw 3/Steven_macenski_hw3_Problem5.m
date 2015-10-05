% hw 3 problem 5
% Steven Macenski last edited Sept 24 2013
%Make a logical arry with new matrix from old to equal the ln of all values
%whos value initally is 1 or more. and add 20 

A = [3 5 -4; -8 -1 33; -17 6 -9];
i = A >= 1;
D = log(A(i));
j = A <= 1;
C = A(j)+20;

%Form D and C into one matrix, just to make it in the same order, although
%the hw didn't specify it.... :D 

B = zeros(3);
B(1,1) = D(1);
B(1,2) = C(1);
B(1,3) = C(2);
B(2,1) = D(2);
B(2,2) = C(3);
B(2,3) = D(3);
B(3,1) = C(4);
B(3,2) = D(4);
B(3,3) = C(5);


fprintf(1,'%f\t %f\t %f\t\n',B);