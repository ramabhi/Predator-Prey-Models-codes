figure()
%alpha = 0.5
% let's now plot the direction fields
[x,y]=meshgrid(-10:8:160,-10:8:120);
b = 0.1;
a = -0.001;
dy = (a*y+b).*y;
dx=ones(size(dy));

quiver(x,y,dx,dy)