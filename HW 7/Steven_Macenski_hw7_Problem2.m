% hw7 problem 2
% Steven Macenski last modified Oct 17, 2013
k = 0;
while k ~= 3
k = menu('Choose your method of approximation','using the ‘limit’ approximate formula','using the Taylor series formula','End Program');

if k == 1    
    LimitApprx
    
elseif k == 2
    TaylorApprx
    
elseif k == 3
    fprintf('Have a nice day :) \n');
end 
end
    
    
    
    
    
    
    
    
    
    