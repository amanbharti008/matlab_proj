function [t,x] = euler_a(fun,x0,tf,h)
N = ceil(tf/h);
% initialize outputs
t = zeros(5,1);
x = vpa(zeros(5,length(x0)));
x(1,:) = x0';
for i = 1:N
    if x(i,1)<0
        break
    end
 t(i+1) = t(i) + h;
x(i+1,:) = vpa(vpa(x(i,:)) + vpa(vpa(h)*vpa(fun(t(i),x(i,:)'))'));
end