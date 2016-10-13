function converge = verificarJacob(B)
    [l c] = size(B);
    C = abs(B);
    converge = %T
    for i=1:l
        if (sum(C(i,:))>1) then
            converge = %F;
            break
        end
        if (sum(C(:,i))>1) then
            converge = %F;
            break
        end
    end
    if (converge==%F) then
        if (max(abs(spec(B)))<1) then
            converge = %T
        end
    end
endfunction
