function [t,x] = Euler_m(fun,x0,tf,h)
N = ceil(tf/h);
% initialize outputs
t = zeros(4,1);
x = zeros(4,length(x0));
x(1,:) = x0';
for i = 1:N
    if x(i,1)<0
        break
    end
 t(i+1) = t(i) + h;
 x(i+1,:) = x(i,:) + h*fun(t(i),x(i,:)')';
end