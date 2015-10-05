% Problem 2 HW 8 Steven Macenski
clf;
m = .01; %kg
g = 9.81;
rho = 1.225;
a = 1/1000;

%[t, output] = ode45(@fun,tspan,ic)

tspan = linspace(0,16,100);
ic = [1000,0];
%position, velocity 

options = odeset('Events',@Functionhw82); % events modified to add 1/1000 for the radius of the ball
[t,out] = ode45(@Functionhw8,tspan,ic,options);

figure(1);
hold on
plot(tspan(91),0,'ok');
plot(t,out(:,1));
xlabel ('time (s)');
ylabel('altitude (m)');
grid on

fprintf('the time it hits the ground is %.3f\n',tspan(91));

