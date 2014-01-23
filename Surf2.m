function[X,Y,Z] = Surf2(Nx,Ny,xMin,xMax,yMin,yMax)
        %Make the grid
        a = 5;
        x = linspace(xMin,xMax,Nx);
        y = linspace(yMin,yMax,Ny);
        [X,Y] = meshgrid(x,y);
        %Calculate the function z = f(x,y)
        Z = cos(X).* sin(Y).*exp((-X)/a)
end