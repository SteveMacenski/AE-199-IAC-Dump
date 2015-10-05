% Steven Macenski modified Oct 25,2013 Problem 3 of hw 8

clf;
m = .01; %kg
g = 9.81;
rho = 1.225;
a = 1/1000;

tspan = linspace(0,16,100);
ic = [1000,0.0001]; %change velocity to starting at nearly 0, as at 0 is error
%position, velocity 

options = odeset('Events',@Functionhw82); % events modified to add 1/1000 for the radius of the ball
[t,out] = ode45(@Functionhw83,tspan,ic,options);

figure(1); %alt v time figure 
plot(t,out(:,1));
title('Alt V Time');
xlabel ('time (s)');
ylabel('altitude (m)');
grid on

figure(2); % vel v time figure 
plot(t,out(:,2));
title('Vel V Time');
xlabel('time (s)');
ylabel('velocity (m/s)');
grid on

% Make plot of Cd vs time and use this to find the time, and then by
% corresponding, the distance. 

vel = out(:,2);
Re = 2.*1.225.*a.*abs(vel)./(1.7*10^-5);
Cd = zeros(1,length(Re));

for i=1:length(Re);
    if Re(i) > 0 && Re(i) < .2;
        Cd(i) = 24./Re(i);
    elseif Re(i) == 0
        Cd(i) = 0;
    else
        Cd(i) = 21.12./Re(i) + 6.3./sqrt(Re(i)) + .25;
    end
end
figure(3);
plot(Cd(2:90),tspan(2:90)); %switch is at t= .1616
axis tight
xlabel('Time');
ylabel('Cd');
title('Cd V Time');
grid on;
fprintf('The switch is at t = 1.9394 seconds\n');















