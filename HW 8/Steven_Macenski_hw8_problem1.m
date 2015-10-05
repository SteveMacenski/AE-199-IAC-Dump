% PRoblem 1 on homework 8, steven macenski last modified Oct 25, 2013
m = .01; %kg
g = 9.81;
rho = 1.225;
a = 1/1000;

%[t, output] = ode45(@fun,tspan,ic)

tspan = linspace(0,150,100);
ic = [1000,0];
%position, velocity 
[t,out] = ode45(@Functionhw8,tspan,ic);

figure(1);
plot(t,out(:,1));
xlabel ('time (s)');
ylabel('altitude (m)');
grid on

figure(2);
hold on
plot(t,out(:,2));
plot(t,-320);
xlabel('time (s)');
ylabel('velocity (m/s)');
grid on
hold off
fprintf('The terminal velocity is roughly -320 m/s, as seen on the graph\n');

termv = -sqrt((m*g)./(.25*1.225*(a^2*pi)));
fprintf('Analytically, it is %.4f\n',termv);

error = termv*.001;
a = out(:,2) <=-318.997;
b = find(a==1);
timemet = tspan(b(1));
fprintf('Time that is .1% of the terminal velocity is at %f',timemet);