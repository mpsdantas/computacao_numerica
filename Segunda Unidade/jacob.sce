function [B, d] = prepararMatriz(A,b)
    [l c] = size(B)
    for i = 1:l
        B(:,i) = A(:,i)/A(i,i);
        d(i) = b(i)/A(i,i)
    end
    B = B - eye(l,c);
    B = -B
endfunction
function [i,erro,x] = jacob(A,b,p,imax)
    [B, d] = prepararMatriz(A,b);
    [l c] = size(B);
    x = zeros(l,1);
    xold = x;
    erro = 1;
    iMax = imax;
    i = 0;
    while (erro>= 10^(-p) & i < iMax)
        x = B*x + d;
        erro = max(abs(x-xold)/max(abs(x)));
        xold = x;
        i = i+1;
    end
endfunction
