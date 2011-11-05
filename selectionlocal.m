function [ newpop ] = selectionlocal( initpop, k , parejas)
%UNTITLED Summary of this function goes here
% Detailed explanation goes here

popsize= size(initpop,1)
newpop= zeros(2*parejas, size(initpop,2));
individuo= zeros(k, size(initpop,2));

for i=1:(2*parejas)
    for j=1:k
        individuo(j,:)= [initpop(round (funcion (1,popsize)),:)];
    end
    
    individuo=sortrows (individuo, -size(initpop,2));
    newpop(i,:)= individuo (1,:);
end

newpop;

end

