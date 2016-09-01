function y = fun(d)
    y = 1 - (1+d).^-9 - 5.28*d
endfunction
function [raiz, iteracoes, erro] = falsa_posicao(a, b, p)
    if (fun(a)*fun(b)<0) then
        er = 10^-p
        inc = 0
        while(er>=10^-p)
            x1 = a - ((b-a)*fun(a)/(fun(b) - fun(a)))
            if(fun(a)*fun(x1)<0) then
                b = x1
                else
                a = x1
            end
            er = abs((b-a)/b)
            inc = inc + 1
        end
    end
    raiz = x1
    iteracoes = inc
    erro = er
   
endfunction