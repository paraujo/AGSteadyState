evalfn='evalfn'  %funcion de evaluacion
clc
bounds=dlmread ('bound.dat'); %limites de las diferentes dimensiones

porcxover=0.60; %porcentaje de Crossover
porcmut=0.15; %porcentaje de Mutaci�n
elitesz=0.02;  %Cantidad de Elite
generation = fix(rand*10) + 10 %N�mero de generaciones
popsize = fix(rand*5) + 10 %Poblaci�n inicial
dimension=size(bounds,1); %cantidad de variables por cada individuo
if isempty(bounds)
	error ('bounds esta vacio')
end
if size (bounds,2)==2
else
   error ('bounds tiene mas que 2 cotas') 
end
%if any (bounds(:,1)> bounds(:,2)
%	error ('bounds tiene minimos mayores que maximos')
%end
