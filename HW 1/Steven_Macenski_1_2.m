%A charged particles movement in a magnetic field, Bo, with components of
%velocity in both perp. and parellel directions. 
% Components of (x,y,z) are as follow (rhocos(wt),rhosin(wt),V||,t)
%rho is the radii and w is the frequency

%Last modification September 5, 2013
%Written By Steven Macenski

m = input('Mass of Particle in kg');
q = input('Charge of Particle in C');
Bo = input('Magnetic Field Strength');
Vperp = input('Velocity in perpendicular direction');
Vpar = input('Velocity in parellel direction of Bo');
Rho = (m*Vperp)./(q*Bo)
w = (q*Bo)./m
%Above defines the Rho and w
%Below will plot the subsiquent x,y,z coordinates
t = 0:.1:10;
x = Rho*cos(w*t);
y = Rho*sin(w*t);
z = Vpar*t;
plot3(x,y,z)
