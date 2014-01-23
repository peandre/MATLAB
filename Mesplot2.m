clear all 
Nx = 100; 
Ny = 100;
xMin = -2;
xMax = 2;
yMin = -2;
yMax = 2;
[X,Y,Z] = Surf2(Nx,Ny,xMin,xMax,yMin,yMax)
figure(1)
pcolor(X,Y,Z)
%colormap([0 0 1]);
xlabel('x');
ylabel('y');
zlabel('z');