% Hw 4 problem 5
% Steven Macenski modified sept 29 2013

Cl = [4.47*10.^-5 1.15*10.^-3 6.66*10.^-2 1.02*10.^-1];
Cd = [5.75*10.^-6 5.09*10.^-4 1.8*10.^-4 1.25*10.^-2];
a = -10:.1:30;
plot(a,polyval(Cl,a));
figure(1)
xlabel('alpha'); ylabel('Cl'); title('Cl vs alpha');
pause
clf

plot(a,polyval(Cd,a));
xlabel('alpha'); ylabel('Cd'); title('Cd vs alpha');
pause 
clf

CCl = polyval(Cl,a);
CCd = polyval(Cd,a);
plot(CCd,CCl);
xlabel('Cd'); ylabel('Cl'); title('Cl vs Cd');
pause 
clf

Ratio =(CCl./CCd);
plot(a,Ratio);
xlabel('alpha'); ylabel('Cl/Cd'); title('Cl/Cd vs alpha');
figure(1)
maxx = max(Ratio);
y = a(139);

fprintf('\nThe angle to max L/D is %.2f\n',y)
pause 
clf

r = roots(Cl);
e = r(3,1);
fprintf('\nZero lift at a = %f\n',e)
hold on 
plot(a,CCl)
plot(e,polyval(Cl,e),'ok')
grid on
% To verify point exists on graph of Cl vs alpha  