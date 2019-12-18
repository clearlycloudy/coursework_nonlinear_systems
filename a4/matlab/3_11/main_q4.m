t=[0 500];
ini_cond=[5;5;5;5];
[~,X]=ode45(@ss_prob4,t,ini_cond);
u = X(:,1);
v = X(:,2);
w = X(:,3);
plot(u,v);
xlabel('x1');
ylabel('x2');
zlabel('alpha%_hat');
title('theta1=-20,theta2=5');
grid;

hold on;

scatter(u(end),v(end))

ini_cond=[20;20;20;20];
[~,X]=ode45(@ss_prob4,t,ini_cond);
u = X(:,1);
v = X(:,2);
w = X(:,3);
plot(u,v);

scatter(u(end),v(end))

ini_cond=[50;-5;10;5];
[~,X]=ode45(@ss_prob4,t,ini_cond);
u = X(:,1);
v = X(:,2);
w = X(:,3);
plot(u,v);

scatter(u(end),v(end))


ini_cond=[-30;-20;-10;5];

[~,X]=ode45(@ss_prob4,t,ini_cond);
u = X(:,1);
v = X(:,2);
w = X(:,3);
plot(u,v);

scatter(u(end),v(end))

ini_cond=[20;20;20;20];
[~,X]=ode45(@ss_prob4,t,ini_cond);
u = X(:,1);
v = X(:,2);
w = X(:,3);
plot3(u,v,w);
xlabel('x1');
ylabel('x2');
zlabel('alpha1\_hat');
title('theta1=1,theta2=5');
hold on;
scatter3(u(end),v(end),w(end))




