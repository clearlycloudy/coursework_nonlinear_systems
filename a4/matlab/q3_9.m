Q=-eye(2);
A = [0 1; -1 -2];
syms p1 p2 p3;
P=[p1 p2; p2 p3];
eqn = P*A+A'*P==Q;
ret = solve(eqn);
p = [ret.p1 ret.p2; ret.p2 ret.p3];

[x,y] = meshgrid(-2:0.01:2,-2:0.01:2);
u=y+x.^2+y.^2;
v=-x-2*y;

z=x.*x.*p(1,1)+y.*y.*p(2,2) + 2*x.*y.*p(1,2);
%region of attraction estimate: V(x) <= c, c = 0.0251
levels = [0.01, 0.0251, 0.05, 0.1, 0.2, 0.4, 0.8];
contour(x,y,z,levels, 'ShowText','on');

hold on;

%quiver(x,y,u,v);
streamslice(x,y,u,v,3);
