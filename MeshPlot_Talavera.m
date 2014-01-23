clear all 
Nx = 100; 
Ny = 100;
xMin = -2;
xMax = 2;
yMin = -2;
yMax = 2;
[X,Y,Z] = Surf_1(Nx,Ny,xMin,xMax,yMin,yMax)

mesh(X,Y,Z)
colormap([0 2 1]);
xlabel('x');
ylabel('y');
zlabel('z');

%Silly Test Comment :)