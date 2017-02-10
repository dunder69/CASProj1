F = @(xy,rho,gamma) [(rho-(xy(1)^2)) + (gamma*xy(2));xy(1)];
F_Jacobian =@(xy,rho,gamma) [-2*xy(1) gamma;1 0];

max_time = 500;
parameter1_range = 0:0.001:1.5;
parameter2 = 0.3;
x0 = 0.1;
y0 = 0.1;
rho = 1.2;
gamma = 0.3;
possibleFixedPoints = [];

[max_lyapunovs,largestExponent,maxRho,maxGamma] = lyapunov2d(F, F_Jacobian, max_time, parameter1_range, parameter2, x0, y0);

%Summing the lyapunov exponents to see if the system is 
%dissipative or conservative
lyapunovSum = nansum(max_lyapunovs);
if lyapunovSum < 0
    lyapunovSum
    disp('System is dissipative')
end
if lyapunovSum == 0
    lyapunovSum
    disp('System is conservative')
end
        
fprintf('The largest exponent is %f acheived with a rho value of %f and a gamma value of %f.\n',largestExponent,maxRho,maxGamma)

plot(parameter1_range,max_lyapunovs, parameter1_range, 0, 'k.')
title('Lapunov Exponents');
xlabel('Param1: Rho','FontSize', 24);
ylabel('\lambda_{max}','FontSize', 24);