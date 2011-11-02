function [ H1, H2 ] = SinglePointXover( P1, P2 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    CantColum = size(P1,2);
    H1 = zeros(1, CantColum);
    H2 = zeros(1, CantColum);

    if CantColum == 3
        H1(1) = P1(1);
        H1(2) = P2(2);
        H2(1) = P2(1);
        H2(2) = P1(2);
    else
        corte = floor(CantColum / 2);
        H1(1,1:corte)     = P1(1,1:corte);
        H1(1,corte+1:end) = P2(1,corte+1:end);
        H2(1,1:corte)     = P2(1,1:corte);
        H2(1,corte+1:end) = P1(1,corte+1:end);
        H1
        H2
    end
end

