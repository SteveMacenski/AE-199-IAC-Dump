% Problem 1
% stupid data from file use importdata command because for the life of me I
% cannot figure out the fscanf command. I should ask about that later.
% given data set, make 3 subplotted graphs with altitude on the y axis
% I. Hate. Matlab. Every. Day. 

data = importdata('USAtmos1976.dat');
Alt = data(:,1);
DensRat = data(:,2);
PressRat = data(:,3);
TempRat = data(:,4);
TempK = data(:,5);
Press = data(:,6);
Dens = data(:,7);
Sound = data(:,8);
Visc = data(:,9);
K.Visc = data(:,10);

subplot(3,1,1);
plot(TempK,Alt);
xlabel('Temp Kelvin');
ylabel('Altitude KM');
axis tight 
subplot(3,1,2);
plot(Press,Alt);
xlabel('Pressure');
ylabel('Altitude KM');
axis tight 
subplot(3,1,3)
plot(Dens,Alt)
xlabel('Density');
ylabel('Altitude KM');
axis tight 