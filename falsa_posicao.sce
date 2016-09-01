function y = fun(d)
    y = 1 - (1+d).^-9 - 5.28*d
endfunction
function [raiz, iteracoes, erro] = falsa_posicao(a, b, p)
    if (fun(a)*fun(b)<0) then
        er = 10^-p
        inc = 0
        x=a
        while(er>=10^-p)
            xold = x
            x = a - ((b-a)*fun(a)/(fun(b) - fun(a)))
            if(fun(a)*fun(x)<0) then
                b = x
                else
                a = x
            end
            er = abs((xold-x)/x)
            inc = inc + 1
        end
    end
    raiz = x
    iteracoes = inc
    erro = er
   
endfunction