% Problem 3

T = -20:5:85;
V = 0:5:55;
i = 1; j = 1;

fprintf(1,'%8.3f',T);
fprintf(1,'\n');
for i = 1:length(V);
    fprintf(1,'%8.3f',V(i))
    for j = 1:length(T);
        T(j);
        V(i);
        WCF(i,j) = 35.7+0.6*T(j)-35.7*(V(i).^0.16)+0.43*T(j)*(V(i).^0.16);
        fprintf(1,'%8.3f',WCF(i,j))
    end
    fprintf(1,'\n');
end
   

%Explained loop: Starts outer for condition, moves in. 
% Inside prints the v(i) the ith value of V
% Inner for defines j for length.
% goes through equation for col 1
% ends and prints new line
% Since j isnt yet the length of T, it starts inner again repeated
% j reaches length of T and so the i value increases by 1
% goes through inner again for all j
%...
% goes through sequence again repeated
% ends 