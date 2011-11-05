function [ initpop ] = reinsertar( mutpop, initpop, m )
%REINSERTAR Summary of this function goes here
%   Detailed explanation goes here


    mutpop = sortrows(mutpop, - size(mutpop,2));      
    initpopordenado = zeros(size(initpop,1), size(initpop,2) + 1);
    
    for i=1 : size(initpop,1)
       initpopordenado(i,:) =  [initpop(i,:) i];
    end
    
    initpopordenado = sortrows(initpopordenado, size(initpopordenado,2) - 1);

    for l=1 : m
       if initpopordenado(l,end-1) <= mutpop(l,end)
        initpop(initpopordenado(l,end),:) = mutpop(l,:);
       end
    end
    
    initpop;
    
end

