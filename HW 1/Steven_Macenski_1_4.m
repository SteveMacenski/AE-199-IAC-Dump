%Using some crazy NACA equations for airfoils, this program will prompt for
%the 4 digit identication number then extrapolate information. 
%From this, it will auto calculate its shape using some crazy equation.
% It will then show the image

%Last Modified September 4, 2013 
% Written by Steven Macenski

NACA = input('NACA Airfoil Classification in form of [x x x x]:');
m = NACA(:,1);
p = NACA(:,2);
tt = NACA(:,3)*NACA(:,4);

