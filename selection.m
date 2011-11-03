function [ newpop ] = selection( initpop, suma_acumulada )
%SELECCION Summary of this function goes here

S  = rand (1, size(initpop,1))

minimo = 0;
maximo = suma_acumulada(1);

for i = 1 : length(suma_acumulada)     
    contador = 0;
    for j = 1 : size(initpop,1)
        if (S(j)>= minimo && S(j) < maximo)            
            contador = contador + 1;
        end       
    end    
    cantidad(i) = contador;
    minimo = suma_acumulada(i);  
    if i ~= length(suma_acumulada)
        maximo = suma_acumulada(i+1);
    end
end

cantidad

newpop = zeros(size(initpop,1),size(initpop,2));
contador2 = 1;
 for i = 1 : length(cantidad)
     if cantidad(i) > 0
         individuo = initpop(i,:);
         for j = 1: cantidad(i)
            newpop(contador2,:) = individuo;
            contador2 = contador2 + 1;
         end
     end     
 end

newpop = [newpop(: ,1:end-1)];

end

