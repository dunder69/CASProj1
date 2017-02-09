% After examing the bifurcation plot, we noticed that rho values between 
% 0.4 and 1 resulted in the system having two attractors. In that
% interval we chose rho and gamma values of 0.8 and 0.3 respectively, and initial conditions
% x0 = 0.1 y0 = 0. We ran the funtion until it got into the basin of
% attraction, and got the fixed point values from there. Using these
% fixed point values in the Jacobian, the resulting eigenvalues
% characterized the local stabilities.

Npre = 200;
rho = 0.8;
x = 0.3;
y = 0.5;
temp = 0;
gamma = 0.3;

for n = 1:Npre
    temp = x;
    x = rho-x*x+gamma*y;
    y = temp;
end

x2 = rho-x*x+gamma*y;
y2 = x;

x
y
x2
y2

%Evaluate stability at fixed points
fp1stability = eig([-2*x gamma; 1 0])
fp2stability = eig([-2*x2 gamma; 1 0])
