function [ endpop ] = mutation( porcmut, initpop, bounds )
%MUTACION Summary of this function goes here
%   Detailed explanation goes here

%-------------------------------------------------------------
% step Mutation

mutacion = round ((porcmut * size(initpop,1)) + 1)

for I = 1 : mutacion
    seleccion = round( rand * (size(initpop,1) - 1 )+ 1 );
%fila seleccionada
    coordenada = round( funcion(1,size(bounds,1))) ;
%columna seleccionada
    direccion = round(funcion(1, size(bounds,2)));
%genero un numero aleatorio entre 0 y 1
    s = round(rand());
%genero el nuevo valor
    nuevovalor = s * initpop(seleccion,coordenada) + (1-s)*bounds(coordenada,direccion);
%reemplazo para esa coordenada el nuevo valor del individuo
    initpop(seleccion,coordenada) = nuevovalor;
        
    mutpop(I,:) = [initpop(seleccion,1:end)];
    initpop(seleccion,:) = [];
     
end

%reeemplazo la poblacion 
endpop = [initpop ; mutpop];

end

