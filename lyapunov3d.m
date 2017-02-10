function [lyapunov_exp,lyapunov_exp_sum] = lyapunov3d(mygamma)

x0 = 0.1;
y0 = 0.1;
z0 = 0.1;
delta = 0.01;
alpha = 0.2;
beta = 0.2;
gamma = mygamma;
t_start = 0;
t_transient = 100000;
t_end = 100100;

t = t_start;
x = x0;
y = y0;
z = z0;

lyapunov_exp = 0;
%lyapunov_expx = 0;
%lyapunov_expy = 0;
%lyapunov_expz = 0;
lyapunov_exp_sum = 0;

while t <= t_end
    deltax = (x*y - x*gamma + alpha);
    deltay = (-1*(z + x));
    deltaz = (beta*z + y);
    x = x + delta*deltax;
    y = y + delta*deltay;
    z = z + delta*deltaz;
    if t > t_transient
        lyapunov_exp = lyapunov_exp + log(sqrt(deltax^2 + deltay^2 + deltaz^2));
        %lyapunov_expx = lyapunov_expx + deltax;
        %lyapunov_expy = lyapunov_expy + deltay;
        %lyapunov_expz = lyapunov_expz + deltaz;
        lyapunov_exp_sum = lyapunov_exp_sum + log(deltax) + log(deltay) + log(deltaz);
    end
    t = t + delta;
end

lyapunov_exp = lyapunov_exp/(t_end - t_transient);
%lyapunov_expx = lyapunov_expx/(t_end - t_transient);
%lyapunov_expy = lyapunov_expy/(t_end - t_transient);
%lyapunov_expz = lyapunov_expz/(t_end - t_transient);
lyapunov_exp_sum = lyapunov_exp_sum/(t_end - t_transient);

if gamma < 5.701 && gamma > 5.699
    gamma
    lyapunov_exp_sum
end

end

