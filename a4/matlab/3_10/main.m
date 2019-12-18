t=[0 500];
ini_cond=[5;5;5];
[~,X]=ode45(@ss_prob3,t,ini_cond);
u = X(:,1);
v = X(:,2);
w = X(:,3);
plot3(u,v,w);
xlabel('x1');
ylabel('x2');
zlabel('theta_hat');
title('theta=1');
grid;

hold on;

scatter3(u(end),v(end),w(end))

ini_cond=[50;-10;5];
[~,X]=ode45(@ss_prob3,t,ini_cond);
u = X(:,1);
v = X(:,2);
w = X(:,3);
plot3(u,v,w);

scatter3(u(end),v(end),w(end))

ini_cond=[-30;20;20];
[~,X]=ode45(@ss_prob3,t,ini_cond);
u = X(:,1);
v = X(:,2);
w = X(:,3);
plot3(u,v,w);

scatter3(u(end),v(end),w(end))




