%Code given in lecture sldes - we did not write this
function max_lyapunovs = lyapunov2d(F, F_Jacobian, t_max, param1_range, param2, x0, y0)

current_l = 0;
for param1=param1_range
    current_l = current_l + 1;
    % Initialize variables
    xy = [x0; y0]; xy_lengths = [1;0];
    for i=1:t_max
        J = F_Jacobian(xy, param1, param2);
        xy=F(xy, param1, param2);
        % Calculate divergence rate in the direction defined by the Jacobian
        xy_lengths=J*xy_lengths;
        length=sqrt(sum(xy_lengths.^2)); % Distance formula
        max_lyapunovs(current_l) = log(length)/i; % Calculate the average
    end
end
end