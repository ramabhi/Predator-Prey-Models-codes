% y0 = 1 ;
% xspan = [0,1];
% alpha = 2;
% [x,y]=ode23('firstode',xspan,y0);
% plot(x,y)
figure()
alpha = 0.2;
tspan = [0 3];
y0 = 1;
[x,y] = ode23(@(x,y) alpha*y, tspan, y0);
plot(x,y)
hold on 
alpha = -0.4
[x,y] = ode23(@(x,y) alpha*y, tspan, y0);
plot(x,y)
hold on
alpha = 0.4;
[x,y] = ode23(@(x,y) alpha*y, tspan, y0);
plot(x,y)
hold on
alpha = 0.6
[x,y] = ode23(@(x,y) alpha*y, tspan, y0);
plot(x,y)
hold on
alpha = -0.8
[x,y] = ode23(@(x,y) alpha*y, tspan, y0);
plot(x,y)
hold on
y0=1.5
alpha = -0.8
[x,y] = ode23(@(x,y) alpha*y, tspan, y0);
plot(x,y)
hold on
alpha = -0.7
[x,y] = ode23(@(x,y) alpha*y, tspan, y0);
plot(x,y)
hold on
alpha = 0.55
[x,y] = ode23(@(x,y) alpha*y, tspan, y0);
plot(x,y)

figure()
alpha = 0.5
% let's now plot the direction fields
[x,y]=meshgrid(-4:.5:4,-4:.5:4);
dy = alpha*y;
dx=ones(size(dy));
quiver(x,y,dx,dy)