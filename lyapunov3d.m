
%The following function belongs to Matthew Fricke and
%was taken from http://cs.unm.edu/~mfricke/CS523_2017spring/
%The function was slightly modified to return max values.

function max_lyapunovs = lyapunov3d(F, F_Jacobian, t_max, alpha_range, beta, gamma, x0, y0, z0)

current_l = 0;

for alpha=alpha_range
    current_l = current_l + 1;
    % Initialize variables
    xyz = [x0; y0; z0]; xyz_lengths = [1;0;0];
    for i=1:t_max
        J = F_Jacobian(xyz, alpha, beta, gamma);
        xyz=F(xyz, alpha, beta, gamma);
        % Calculate divergence rate in the direction defined by the Jacobian
        xyz_lengths=J*xyz_lengths;
        length=sqrt(sum(xyz_lengths.^2));% Distance formula
        max_lyapunovs(current_l) = log(length)/i; % Calculate the average
        
    end
end

end