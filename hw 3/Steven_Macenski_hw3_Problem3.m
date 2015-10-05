% hw3 problem 3%
% Steven Macenski last edited Sept 17 2013
% given 2 matrix tell listed information. 

A = [5 6 7; 8 9 10; 11 12 13];
B = logical(eye(3));
C = A(B);
fprintf(1,'%0.0f\n',C)

% Since logical turns numbers 0 and 1 into logicals representing true or
% false, an eye matrix of them (001;010;001) makes that only every '1'
% value in the A matrix is true, so you are outputted on the true results
% being those of 5,9,13 on the diagonal of matrix A. 

% The diag command could do this as well.