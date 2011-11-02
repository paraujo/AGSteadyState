function [initpop ] = createpop(popsize, bounds, func)
% Devuelve un número aleatorio entre a y b, de dimensión filas x columnas.

    r=rand(popsize,size(bounds,1));
    b1= bounds(:,1);
    b2= bounds (:,2);
    c=(b2-b1)'; %transponer
    c1 =repmat (c, popsize,1);
    d=repmat (b1',popsize,1);
    initpop= r.*c1+d;
        
    initpop = func(initpop);
    
end

