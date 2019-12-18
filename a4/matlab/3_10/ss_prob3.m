function dx = ss_prob3(t,x)
    theta=-10;
    dx1 = x(2);
    dx2 = -theta*sin(x(1))-1/2*(x(1)-pi)-x(2)+x(3)*sin(x(1));
    dx3 = -(2*(x(1)-pi)+2*2*x(2))*sin(x(1));
    dx = [dx1; dx2; dx3];
end    