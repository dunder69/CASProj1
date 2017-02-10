
F = @(xyz,alpha,beta,gamma) [xyz(1)*xyz(2)-xyz(1)*gamma+alpha;-xyz(3)-xyz(1);beta*xyz(3)+xyz(2)];
F_Jacobian =@(xyz,alpha,beta,gamma) [xyz(2)-gamma xyz(1) 0;-1 0 -1;0 1 beta];

max_time = 10;
alpha_range = 0:0.001:0.5;
beta = 0.2;
gamma = 5.7;
x0 = 0.001;
y0 = 0.001;
z0 = 0.001;

max_lyapunovs = lyapunov3d(F, F_Jacobian, max_time, alpha_range, beta, gamma, x0, y0, z0);

plot(alpha_range,max_lyapunovs, alpha_range, 0, 'k.')
xlabel('Param1: gamma','FontSize', 24);
ylabel('\lambda_{max}','FontSize', 24);