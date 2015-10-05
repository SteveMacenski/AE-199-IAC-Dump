function [ydot] = Functionhw83( t,yVec )
%Functionhw8 Summary of this function goes here

%yVec [pos, vel]

m = .01; 
g = 9.81;
rho = 1.225;
a = 1/1000;
v = yVec(2);
A = (a.^2)*pi;


 Re = 2*1.225*a*abs(v)/(1.7*10^-5);
% velocity is forcing the infiniteness, not sure why. Good without. 


if 0 < Re < .2;
    Cd = 24./Re;
elseif Re == 0
    Cd = 0;
else
    Cd = 21.12./Re + 6.3./sqrt(Re) + .25;
end


ROCVel = (  Cd*.5*1.225*(a^2*pi)*v.^2  - m*g  )./m;
ROCPos = yVec(2);

ydot = [ROCPos,ROCVel]';


end

