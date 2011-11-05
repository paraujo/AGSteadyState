function [ newpop ] = crossover(initpop, evalfn )
%CRUZAMIENTO Summary of this function goes here

bucle = size(initpop) /2;

for i = 1 : bucle

num_padre = round(rand * (size(initpop,1) - 1)) + 1;
padre = initpop(num_padre , : );
initpop(num_padre,:) = [];

num_madre = round(rand * (size(initpop,1) - 1)) + 1;
madre = initpop(num_madre , : );
initpop(num_madre,:) = [];

[hijo1, hijo2] = SinglePointXover(padre, madre)

%hijo2 = [madre(1,1) padre(1,2) func_xy(madre(1,1), padre(1,2))];
%hijo1 = [padre(1,1) madre(1,2) func_xy(padre(1,1), madre(1,2))];

newpop2(i,:) = [hijo1];
newpop3(i,:) = [hijo2];

end

newpop = [newpop2;newpop3];

newpop = evalfn(newpop(:,1:end-1))

end