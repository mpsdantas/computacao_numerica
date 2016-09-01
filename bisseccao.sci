//Método da Bissecção
//Marcus P. S. Dantas
function y = fun(d)
    // Função onde deve ser passada a função que irá ser trabalhada.
    y = d.^2 - 4
endfunction
function [raiz, iteracoes, erro] = bisseccao(a, b, p)
    if (fun(a)*fun(b)<0) then // Verificação Inicial para ver se f(a)*f(b) < 0
        er = 10^-p // Definindo um erro inicial
        inc = 0 // iniciando o contador de incrementação
        while(er >= 10^-p) // laço para realizar as operações
            x = (a+b)/2 // calculando o valor médio
            if(fun(a)*fun(x)==0 | fun(b)*fun(x)==0) then // primeira condição, verifica se a f(x) * f(a) ou f(b) é igual a zero, se for quer dizer que foi achada uma raiz
                break
                elseif (fun(a)*fun(x)<0) then // verificação se f(a)*f(x) < 0 se sim quer dizer que o x deve ser salvo na variavél b.
                    b = x
                    else  // se f(a)*f(x) não for menor que 0 o x deve ser salvo em a
                        a = x
            end
            er = abs((b-a)/(b)) //calculo do erro
            inc = inc+1 //incrementando
        end
        raiz = x
        iteracoes = inc
        erro = er
    end
endfunction
