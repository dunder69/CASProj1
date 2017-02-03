function diverganceTime = dymapdiff (rho,gamma,x0,y0,t, delta, threshold)

x = x0;
y = y0;
x2 = x0 + delta;
y2 = y0;

for i=1:t
   xtemp = x;
   x = (rho-(x^2)) + (gamma*y);
   y = xtemp;
   xtemp2 = x2;
   x2 = (rho-(x2^2)) + (gamma*y2);
   y2 = xtemp2;
   if(sqrt((x2-x)^2 + (y2-y)^2) > delta +  threshold)
       diverganceTime = i;
       break;
   end
end

