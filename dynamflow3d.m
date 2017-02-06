function dy = dynamflow3d(t,y)

dy = zeros(3,1);
a = 0.2;
b = 0.2;
g = 5.7;

dy(1) = (y(1)*y(2))-(y(1)*g)+a;
dy(2) = -1*(y(3)+y(1));
dy(3) = (b*y(3))+y(2);