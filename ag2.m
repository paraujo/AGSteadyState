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
    
    popseleccionada = selectionlocal(initpop, k, parejas)    
    cruzapop = crossover(popseleccionada, func)
    pobamutar = [cruzapop ; popseleccionada]
    
    mutpop = step_mutation(porcmut,pobamutar, bounds);    
    mutpop = func(mutpop(:,1:end-1))   
    
    initpop = reinsertar(mutpop, initpop, m)
    
end
  
endpop = initpop

figure(1)    
    hold on;        
    p = plot(endpop(:,1),endpop(:,2),'ro');
    grid on

end

