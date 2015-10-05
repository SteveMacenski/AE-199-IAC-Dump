% HW 3 problem 4
% given stock prices at a horizontal matrix use logical indices to
% determine how many days the price of A was about B (7 days)
% Steven Macenski last edited Sept 17 2013

price_A = [19 18 22 21 25 19 17 21 27 29];
price_B = [22 17 20 19 24 18 16 25 28 27];

i = price_A > price_B;
%S = i(:,1) + i(:,2) + i(:,3) : i(:,4) + i(:,5) +i(:,6)+i(:,7)+i(:,8)+i(:,9)+i(:,10)
%fprintf(1,'The number of days A is about B is %0.0f\n',S)

q = length (price_A(i));
fprintf(1,'The number of days A is greater than B is %0.0f\n',q);