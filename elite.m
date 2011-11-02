function [ elitepop ] = elite( initpop )
%ELITE Summary of this function goes here
%   Detailed explanation goes here

nroelite = round ((0.02 * size(initpop,1)) + 1);

for I = 1 : nroelite
     elitepop(I,:) = [initpop(I,1:end-1)];
     %initpop(cant,:) = [];
     %cant = cant-1;
end


end

