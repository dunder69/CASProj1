function lyapunov_exp = lyapunov3d(mygamma)

x0 = 0.1;
y0 = 0.1;
z0 = 0.1;
delta = 0.01;
alpha = 0.2;
beta = 0.2;
gamma = mygamma;
t_start = 0;
t_transient = 3000;
t_end = 3100;

t = t_start;
x = x0;
y = y0;
z = z0;

lyapunov_exp = 0;

while t <= t_end
    xprev = x;
    yprev = y;
    zprev = z;
    deltax = (x*y - x*gamma + alpha);
    deltay = (-1*(z + x));
    deltaz = (beta*z + y);
    x = x + delta*deltax;
    y = y + delta*deltay;
    z = z + delta*deltaz;
    if t > t_transient
        lyapunov_exp = lyapunov_exp + log(sqrt(deltax^2 + deltay^2 + deltaz^2));
    end
    t = t + delta;
end

lyapunov_exp = lyapunov_exp/(t_end - t_transient);
