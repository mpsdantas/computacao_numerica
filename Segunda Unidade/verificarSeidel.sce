function converge = verificarSeidel(B)
    [l c] = size(B);
    C = abs(B);
    Beta = ones(l,1);
    converge=%T
    for i=1:l
        if (sum(C(i,:)) > 1)
            converge = %F
            break
        end
        Beta(i) = C(i,:)*Beta;
    end
    BetaMax = max(Beta);
    if(BetaMax>1) then
        converge = %F;
    end
    if (converge==%F) then
        if (max(abs(spec(B)))<1) then
            converge = %T
        end
    end
endfunction