function [x,y] = bifurcationplot()

Npre = 200; Nplot = 100;
x = zeros(Nplot,1);
y = zeros(Nplot,1);
rho_start = 0.1;
rho_end = 1.4;
rho_delta = 0.0005;
x_start = 0.3;
y_start = 0.5;
temp = 0;
gamma = 0.3;

for r = rho_start:rho_delta:rho_end
        x(1) = x_start;
        y(1) = y_start;
        for n = 1:Npre
            temp = x(1);
            x(1) = r-x(1)*x(1)+gamma*y(1);
            y(1) = temp;
        end
        for n = 1:Nplot-1
            temp= x(n);
            x(n+1) = r-x(n)*x(n)+gamma*y(n);
            y(n+1) = temp;
        end
        plot(r*ones(Nplot,1),x,'.b','markersize',1);
        hold on;
end

title('Bifurcation Plot')
xlabel('Rho')
ylabel('x')