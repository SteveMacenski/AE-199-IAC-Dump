% Object cooling according to Newton's Law of Cooling where k is a constant
% Modified last September 5, 2013

%Written by Steven Macenski

Ts = input('Tempurature of Chamber');
To = input('Temperature of object initially');
k = input('Newtons Cooling constant, K');
t = input('Range of Time in format T1:t2');
T = Ts + (To-Ts)*exp(1).^(-k*t);
FinalTemp = round (T(1,1))

plot(t,T);
xlabel('Time');
ylabel('Degrees');
figure(1)