function dx = ss_prob4(t,x)
    theta_1 = -20;
    theta_2 = 5;
    dx1 = x(2);
    dx2 = -theta_1*sin(x(1)) + theta_2*( x(3)*sin(x(1)) - x(4)*(x(1) - pi + x(2)));
    dx3 = -sin(x(1))*((x(1)-pi)+2*x(2));
    dx4 = (x(1)-pi)^2 + 2*x(2)^2 + 3*x(2)*(x(1)-pi);
    dx = [dx1; dx2; dx3; dx4];
end    