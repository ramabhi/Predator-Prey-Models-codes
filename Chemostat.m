clear all;
clc;
x=zeros(1000);
y=zeros(1000);
c0=300;
A=1000;
V=100;
a=A/V;
q=1;
pt=int16((A*q)/(a-q));
for i=1:1000
    x(i)=(i+A)*(c0-i)/i;
    if x(i)<0
        x(i)=0;
    end
end

for i=1:1000
    if i==pt
        y(i)=300000;
    else
        y(i)=0;
    end
end
%x axis nutrient y axis population of bacteria at equilibrium.
plot(x);
hold;
plot(y);