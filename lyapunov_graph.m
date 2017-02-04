F = @(xy,rho,gamma) [(rho-(xy(1)^2)) + (gamma*xy(2)),xy(2)];
F_Jacobian =@(xy,rho,gamma) [0 1; 2*xy(1) gamma];

max_time = 500;
parameter1_range = 2:0.001:3;
parameter2 = 0.2;
x0 = 0.5;
y0 = 0.5;
rho = 1.2;
gamma = 0.3;

max_lyapunovs = lyapunov2d(F, F_Jacobian, max_time, parameter1_range, parameter2, x0, y0);

plot(parameter1_range,max_lyapunovs, parameter1_range, 0, 'k.')
xlabel('Param1: a','FontSize', 24);
ylabel('\lambda_{max}','FontSize', 24);