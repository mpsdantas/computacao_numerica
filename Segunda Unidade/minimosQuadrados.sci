function [ac, vetorErro, erro]= minimosQuadrados(x,y,grauPolinomio)
    for j=0:grauPolinomio
        X(:,j+1) = x.^j;
    end
    XtX = X'*X;
    XtY = X'*y;
    Mext = [XtX XtY];
    Mso = rref(Mext);
    n = length(Mso(1,:));
    ac = Mso(:,n);
    vetorErro = X*ac - y;
    erro = (norm(vetorErro)).^2;
endfunction
