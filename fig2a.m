rho = 1.29;
gamma = 0.3;
x0 = rand;
y0 = rand;
delta = .01;
max =1;

[xpoints,ypoints] = dymap2d(rho,gamma,x0,y0,50);
[xpoints2,ypoints2] = dymap2d(rho,gamma,x0+delta,y0,50);

plot(xpoints);
plot(xpoints2,'--m');

divTimes = zeros(100,2);
threshold = 0.1;
t = 200;

for i=1:100
    divTimes(i,1) = delta;
    divTimes(i,2) = dymapdiff(rho,gamma,x0,y0,t, delta, threshold);
    delta = delta + 0.01;
end

figure;
plot(divTimes(:,1),divTimes(:,2));
axis([0 inf 0 inf]);
