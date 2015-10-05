% Object cooling according to Newton's Law of Cooling where k is a constant
% Modified last September 9, 2013

%Written by Steven Macenski

Ts = 38;
To = 120;
k = .45;
t = (0:3);
T = Ts + (To-Ts)*exp(1).^(-k*t);
FinalTemp = round (T(1:1))

plot(t,T);
xlabel('Time');
ylabel('Degrees');
figure(1)
clear all
pause


%A charged particles movement in a magnetic field, Bo, with components of
%velocity in both perp. and parellel directions. 
% Components of (x,y,z) are as follow (rhocos(wt),rhosin(wt),V||,t)
%rho is the radii and w is the frequency

m = 1.67.*10.^-27;
q = 1.6.*10.^-19;
Bo = .35;
Vperp = 4.69.*10.^6;
Vpar = 1;
Rho = (m*Vperp)./(q*Bo)
w = (q*Bo)./m
%Above defines the Rho and w
%Below will plot the subsiquent x,y,z coordinates
t = 0:.15:10;
x = Rho*cos(w*t);
y = Rho*sin(w*t);
z = Vpar*t;
plot3(x,y,z)
figure(1)
clear all
pause

% Subplot two vectors t and v apart in a graph. 
% Where the vectors are overlapped for all times 0:8 on the graph

t = 0:.1:8;
z = (exp(1).^(-t./2).*cos(20*t-6));
v = -8:.1:8;
u = 6*log10(v.^2+20); 
subplot(1,2,1), plot(t,z);
xlabel('time');
ylabel('z(t)');
text(2,-.4,'(exp(1).^(-t./2).*cos(20*t-6))');
subplot(1,2,2), plot(v,u);
xlabel('time');
ylabel('u(t)');
text(-.75,11,'u = 6*log10(v.^2+20)');
axis tight
figure(1)

clear all
pause

close all
%NACA Air foil problem

NACA = input('NACA Airfoil Classification:');
q = NACA./1000;
m = floor(q);
w = NACA - m*1000;
p = floor(w./100);
t = NACA-(m*1000)-(p*100);
clear q;
clear w;
clear e;
clear r;
%Above we determined the breakdown of the numberical values of the mptt
% Below are the questions Yu and Yd for the upper and lower parts of the
% curve
% since lower changes as x relates to p, we need to relate them accordingly

x = 0:.01:1;


thick = (t.*5)*((.29690*sqrt(x))-.126*(x)-.3516*(x).^2+.2843*(x).^3-.1015*(x).^4);


%x1 = 1:p;
%x2 = p:1000;
%camby1 = (m./p.^2)*(2*p*x1-(x1).^2);
%camby2 = (m./(1-p).^2)*((1-2*p)+2*p*(x2)-(x2).^2);
%camb = [camby1 camby2];



%for x1 = 0:.01:p, camb = (m./p.^2)*(2*p*x-(x).^2)
    %for x2 = p:.01:1, camb = (m./(1-p).^2)*((1-2*p)+2*p(x)-(x).^2)
    %end
%end

if x <= p
    camb = (m./p.^2)*(2*p*x-(x).^2);
elseif x > p
    camb = (m./(1-p).^2)*((1-2*p)+2*p(x)-(x).^2);
end

Yu = camb + thick;
Yd = camb - thick;
plot(x,Yu,x,Yd,'LineWidth',2)
axis equal
xlabel('x/c');
ylabel('y/c');
text(3,2,'NACA Airfoil');