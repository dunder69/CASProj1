function [xpoints,ypoints] = dymap2d (rho,gamma,x0,y0,t)

xpoints = x0:t;
ypoints = y0:t;

for i=1:size(xpoints,2)
    ypoints(i+1) = xpoints(i);
    xpoints(i+1) = (rho-(xpoints(i)^2)) + (gamma*ypoints(i));
end



% figure;
% quiver(xpoints,ypoints,gradient(xpoints),gradient(ypoints))
% title('Attractors')
% xlabel('xpoints')
% ylabel('ypoints')

    


