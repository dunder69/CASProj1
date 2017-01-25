function [xpoints,ypoints] = dymap2d (rho,gamma,x0,y0,stepsize,maxVal)

xpoints = x0:stepsize:maxVal;
ypoints = y0:stepsize:maxVal;

for i=2:size(xpoints,2)
    ypoints(i) = xpoints(i-1);
    xpoints(i) = rho-((xpoints(i-1))^2) + (gamma*ypoints(i-1));
end

plot(xpoints)
yyaxis right
plot(ypoints,'--m')
    


