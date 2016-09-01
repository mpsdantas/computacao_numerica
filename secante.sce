function y = fun(d)
    y = d.^2 - 8
endfunction
function j = der(x0, x1)
    j = (fun(x0) - fun(x1))/(x0-x1)
endfunction
function [raiz, erro, iteracoes] = secante(x0, x1 , p)
       x = x1 - fun(x1)/der(x0, x1)
       er = abs((x-x1)/x)
       inter = 0
       while(er>=10^-p)
            x0 = x1
            x1 = x
            x = x1 - fun(x1)/der(x0, x1)
            er = abs((x - x1)/x)
            inter = inter + 1
       end
       raiz = x
       iteracoes = inter
       erro = er
endfunction