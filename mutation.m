function [ endpop ] = mutation( initpop,bounds )
%MUTACION Summary of this function goes here
%   Detailed explanation goes here

%-------------------------------------------------------------
% boundary Mutation

seleccion = fix( rand * (length(initpop) - 1 )+ 1 );

coordenada = round( funcion(1,size(bounds,1))) 

direccion = round(funcion(1, size(bounds,2)))

initpop(seleccion,coordenada) = bounds(coordenada, direccion);

endpop = initpop;

end

