t0 = 0;
tfinal = 45;
y0 = [1;0.5];   
[t,y] = ode23(@Lotka,[t0 tfinal],y0);

z0 = [10/9;20/11]; 
p0=0;
pfinal=45;
[p,z] = ode23(@Lotka,[p0 pfinal],z0);


figure(1)
plot(t,y)
title('Predator and Prey Populations Over Time')
xlabel('time')
ylabel('Population')
legend('Prey','Predators','Location','North')

figure(2)
plot(y(:,1),y(:,2))
title('Phase Plane Plot')
xlabel('Prey Population')
ylabel('Predator Population')

hold on
plot(z(:,1),z(:,2))
legend('(Initial prey,Initial predators)=(1,0.5)','(Initial prey,Initial predators)=(1,0.75)');



