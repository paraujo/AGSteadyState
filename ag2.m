function [] = ag2(func)
%AG2 Summary of this function goes here
%   Detailed explanation goes here

configag2;

initpop = createpop(popsize, bounds, func)

figure(1)
    clf
    hold on;        
    plot(initpop(:,1),initpop(:,2),'bo');           
    grid on


for i = 1 : generation
    no saque nunca mas eso
    [initpop, suma_acumulada] = probabilidad(initpop, func)
    elitepop = elite(initpop)
    initpop = sel(initpop,suma_acumulada)
    [cruzapop, initpop] = crossover(porcxover,initpop, func)
    mutpop = step_mutation(porcmut,initpop, bounds)    
    
    initpop = [cruzapop; mutpop];
    initpop = sortrows(initpop, 3);
    
    for I = 1 : size(elitepop,1)
     initpop(I,:) = [];     
    end
    
    initpop = [initpop ; elitepop]
end
  
endpop = initpop

figure(1)    
    hold on;        
    p = plot(endpop(:,1),endpop(:,2),'ro');
    grid on

end

