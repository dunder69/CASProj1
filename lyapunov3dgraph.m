gammastart = 3;
gammaend = 6;
gammadelta = 0.01;
gamma_range = gammastart:gammadelta:gammaend;

gamma = gammastart;
index = 0;

while gamma < gammaend
    index = index + 1;
    [lyapunov_exp(index),lyapunov_exp_sum(index)] = lyapunov3d(gamma);
    gamma = gamma + gammadelta;
end

%plot(gamma_range,lyapunov_expx,'--r')
%hold on
%plot(gamma_range,lyapunov_expy, ':b')
%hold on
%plot(gamma_range,lyapunov_expz, '-g')
%xlabel('Param1: gamma','FontSize', 24);
%ylabel('\lambda_{max}','FontSize', 24);
%title('System 2 Lyapunov Exponents');

figure;
plot(gamma_range,lyapunov_exp, '-b')
xlabel('Param1: gamma','FontSize', 24);
ylabel('\lambda','FontSize', 24);
title('System 2 Lyapunov Exponents');

figure;
plot(gamma_range,lyapunov_exp_sum, '-b')
xlabel('Param1: gamma','FontSize', 24);
ylabel('\lambda sum','FontSize', 24);
title('System 2 Lyapunov Exponent Sums');
