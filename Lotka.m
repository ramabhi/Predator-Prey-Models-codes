function yp = Lotka(~,y)
alpha=2;
beta=1.1;
gamma=1;
delta=0.9;
yp = diag([alpha - beta*y(2), -gamma + delta*y(1)])*y;
