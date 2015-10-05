% Problem 2
data = importdata('USAtmos1976.dat');

V = input('Input Velocity of craft:  ');
Alt = input('Input Altitude of craft:  ');

if (Alt/2) ~= -1:43;
    if (Alt/2) < -1 || (Alt/2) > 43;
    disp('error, input even value between -2 and 86');
    elseif -1<(Alt/2)<43;
        Alt = round(Alt/2)*2;
    end
end

y = 1.4;
Line = (Alt./2)+2;
p = data(Line,6);
P = data(Line,7);

c = sqrt((y*p)./P);
Mach = V./c

if Mach < 0.8 
    disp('subsonic');
elseif 0.8 <= Mach && Mach <= 1.2
    disp('transonic');
elseif 1.2 < Mach && Mach < 5.0
    disp('supersonic'); 
elseif Mach >= 5.0
    disp('hypersonic');
end
