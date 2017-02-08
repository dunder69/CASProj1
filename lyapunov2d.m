%The following function belongs to Matthew Fricke and
%was taken from http://cs.unm.edu/~mfricke/CS523_2017spring/
%The function was slightly modified to return max values.

function [max_lyapunovs,largestExponent,maxRho,maxGamma] = lyapunov2d(F, F_Jacobian, t_max, param1_range, param2, x0, y0)

largestExponent = -Inf;
maxRho = 0;
maxGamma = 0;
current_l = 0;
rhos = [];
gammas = [];

for param1=param1_range
    current_l = current_l + 1;
    % Initialize variables
    xy = [x0; y0]; xy_lengths = [1;0];
    for i=1:t_max
        J = F_Jacobian(xy, param1, param2);
        xy=F(xy, param1, param2);
        % Calculate divergence rate in the direction defined by the Jacobian
        xy_lengths=J*xy_lengths;
        length=sqrt(sum(xy_lengths.^2));% Distance formula
        max_lyapunovs(current_l) = log(length)/i; % Calculate the average
        rhos(current_l)= param1;
        gammas(current_l) = param2;
    end
end

[largestExponent, idx] = max(max_lyapunovs);
maxRho = rhos(idx);
maxGamma = gammas(idx);

end