clear all 
Nx = 30; 
Ny = 30;
a = 1.5;
lambda = 5;
xMin = -4;
xMax = 4;
yMin = -4;
yMax = 4;
x = linspace(xMin,xMax,Nx);
y = linspace(yMin,yMax,Ny);
[X,Y]=meshgrid(x,y);
%%compute vector field
Rmag=sqrt(X.^2+Y.^2);
ThetaHatx=-Y./Rmag;
ThetaHaty=X./Rmag;
Vmag=sin(2*pi*Rmag/lambda).*Rmag.*exp(-Rmag/a);
Vx=Vmag.*ThetaHatx;
Vy=Vmag.*ThetaHaty;
quiver(X,Y,Vx,Vy,'k');
axis square
xlabel('x(cm)');
ylabel('y(cm)');
