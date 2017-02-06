function [x,y,z] = dynamflow3dPlot(initial_values, max_time)

for t = 1:max_time
    [T,X] = ode45( @(T,X) dynamflow3d(T, X), [0, t], initial_values);
    
    x = X(:,1);
    y = X(:,2);
    z = X(:,3);
    
    plot3(x, y, z)
    %pause(rate)
    drawnow
end
end