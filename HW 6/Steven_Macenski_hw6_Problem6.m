function [ t,traj ] = Steven_Macenski_hw6_Problem6( Vo, theta )
% input Vo, theta
% Will output trajectory [x,y] from Vo and theta 

g = 9.981;
theta = deg2rad(theta);

Vox = cos(theta).*Vo;
Voy = sin(theta).*Vo;

x = @(t) Vox.*t;
y = @(t) Voy.*t - ((g/2)*(t.^2));

t = Voy./(g/2);
t = 0:.1:t;


Y = y(t);
X = x(t);
plot(X,Y);
hold on
grid on;

height = max(Y);
range = max(X);

fprintf('the max height is %f \nthe max range is %f\n',height,range);

% output table of t and [x,y]'s 
for i= 1:length(t);
    xx(i) = x(t(i));
    yy(i) = y(t(i));
end 


traj = zeros(length(t),2);
traj(:,1) = xx;
traj(:,2) = yy;

end

