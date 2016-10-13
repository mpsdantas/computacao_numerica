function y = fun(d)
    y = d.^2 - 8
endfunction
function j = der(h)
    j = 2*h
endfunction
//plot(k, fun(k))
//plot(k, zeros(1, length(k)))
function [raiz, erro, iteracoes] = newtoton(x0, p)
       x = x0 - fun(x0)/der(x0)
       er = abs((x-x0)/x)
       inter = 0
       while(er>=10^-p)
            x0 = x
            x = x0 - fun(x0)/der(x0)
            er = abs((x - x0)/x)
            inter = inter + 1
       end
       raiz = x
       iteracoes = inter
       erro = er
endfunction
