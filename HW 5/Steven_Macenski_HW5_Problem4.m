% HW 5 Problem 4
% Steven Macenski modified Oct 2,2013
clf
C = 2;
fprintf('\nC must be %.0f to force the matrix to be singular\n',C);

c = -4:8;

determ = 2 - 1.*c;
figure(1);
hold on
plot(2,0,'ob');
plot(c,determ,'-k')
grid on

% plot the lines for values of C -4 -2 0 2 4 6
% hold on
% subplot(3,2,1);
% plot(c,1.-c);
% plot(c,(2+4.*c)/2);
% % subplot(3,2,2);
% % plot(cc,(2-
cc = -4:2:6;
figure(2);
for i = 1:length(cc)
    axis([-5 5 -5 5]);
    subplot(3,2,i);
    hold on
    plot(c,1-c);
    plot(c,1-(cc(i).*(c./2)))
    grid on
end
fprintf('When singular, the two lines are identical');
