function [t,x] = euler_ex(fun,x0,tf,h)
N = ceil(tf/h);
% initialize outputs
t = zeros(30+1,1);
x = vpa(zeros(30+1,length(x0)));
x(1,:) = x0';
for i = 1:N
    if x(i,3)<0
        break
    end
    if x(i,4)<0
        break
    end
 t(i+1) = t(i) + h;
 x(i+1,:) = vpa(x(i,:) + vpa(h*fun(t(i),x(i,:)')'));
end