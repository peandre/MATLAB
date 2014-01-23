function[X,Y,Z] = Surf_1(Nx,Ny,xMin,xMax,yMin,yMax)
        %Make the grid
        x = linspace(xMin,xMax,Nx);
        y = linspace(yMin,yMax,Ny);
        [X,Y] = meshgrid(x,y);
        %Calculate the function z = f(x,y)
        Z = X.^2 *exp(-X.^2+Y.^2);
end