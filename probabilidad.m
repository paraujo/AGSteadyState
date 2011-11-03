function [ initpop, suma_acumulada ] = probabilidad( initpop,func )
%PROBABILIDAD Summary of this function goes here
%   Detailed explanation goes here

    initpop = func(initpop(:,1:end-1))

    epsilon = 2.5;

    maximo = max(initpop(:,end));

    func_g = [initpop(:,1:end)  initpop(:,end) + maximo + epsilon];

    SUM = sum(func_g(:,end));

    P = [initpop(:,1:end)  func_g(:,end)/SUM];

    if any(P<0)
           error ('EPAAAAAAAAAAAAAAAAAAAAAAAA')
    end        

    initpop = sortrows(P, -(size(initpop,2)));
    
    suma_acumulada = cumsum(initpop(:,end));

end

