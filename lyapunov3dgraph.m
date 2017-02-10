gammastart = 0;
gammaend = 30;
gammadelta = 0.01;
gamma_range = gammastart:gammadelta:(gammaend - gammadelta);

gamma = gammastart;
index = 0;

while gamma < gammaend
    index = index + 1;
    lyapunov_exp(index) = lyapunov3d(gamma);
    gamma = gamma + gammadelta;
end

plot(gamma_range,lyapunov_exp, gamma_range, 0, 'k.')
xlabel('Param1: gamma','FontSize', 24);
ylabel('\lambda_{max}','FontSize', 24);
title('System 2 Lyapunov Exponents');