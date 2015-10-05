function [ydot] = Functionhw8( t,yVec )
%Functionhw8 Summary of this function goes here

%yVec [pos, vel]

m = .01; 
g = 9.81;
rho = 1.225;
a = 1/1000;
v = yVec(2);

ROCVel = (  .5*.5*1.225*(a^2*pi)*v.^2  - m*g  )./m;
ROCPos = yVec(2);

ydot = [ROCPos,ROCVel]';


end

