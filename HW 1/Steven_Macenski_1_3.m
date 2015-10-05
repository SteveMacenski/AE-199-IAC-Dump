% Subplot two vectors t and v apart in a graph. 
% Where the vectors are overlapped for all times 0:8 on the graph

%Last Modified September 4, 2013
% Written by Steven Macenski
t = 0:.1:8;
z = (exp(1).^(-t./2).*cos(20*t-6));
v = -8:.1:8;
u = 6*log10(v.^2+20); 
subplot(1,2,1), plot(t,z);
subplot(1,2,2), plot(v,u);
axis tight
figure(1)
