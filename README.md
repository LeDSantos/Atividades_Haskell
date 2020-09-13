# Atividades_Haskell
Exercícios simples de Haskell

# Lab1

- Elaborar a função invertelst, que recebe uma lista e retorna ela invertida.

- Elaborar a função powlist, que recebe uma lista e um número, retornando uma lista com os elementos elevados ao número recebido.

# Lab2

- Usando 'foldl' ou 'foldr', elabore a função 'somatorio', que recebe uma lista de números reais e devolve a soma dos números da lista. 
P.ex.: somatorio [1.0, 2.2, 4.0] --> 7.2

- Usando funções de ordem superior ('map', 'fold'...) e lambda (i.e., não nomeadas), elabore uma função que receba uma lista de números reais (representando um vetor Euclidiano) e calcule a norma de tal vetor, conforme a descrição seguinte (tal definição leva em conta que os valores do vetor estão normalizados entre 0.0 e 1.0): 
norma = raiz_quadrada(somatório dos quadrados dos elementos)
Ou seja, o somatório dos quadrados dos números presentes em tal lista.
P.ex.: norma [0.1, 0.2, 0.3, 0.4] --> 0.547722557505

- Usando funções de ordem superior ('map', 'fold'...), elabore uma função que receba duas listas de números reais (representando vetores Euclidianos) e calcule o produto interno entre esses vetores, conforme a descrição seguinte (tal definição leva em conta que os valores dos vetores estão normalizados entre 0.0 e 1.0): 
P.ex.: prod_int [0.1, 0.4, 0.9] [0.2, 0.4, 0.5] --> 0.63
Dica: a grande maioria das funções de ordem superior só trabalha com 1 lista (então a dica é tentar agrupar várias listas em uma só, por exemplo, em uma lista de pares ordenados).
Opcional: se desejar aumentar o grau de complexidade, utilize também uma função anônima (recursiva)!

- Usando funções elaboradas nos exercícios anteriores (norma e produto interno), elabore uma função que receba duas listas de números reais (representando os vetores de palavras dos documentos) e calcule a similaridade entre esses dois documentos.
Perceba que a definição leva em conta o cálculo do cosseno entre os dois vetores (detalhes em: http://en.wikipedia.org/wiki/Cosine_similarity). 

# Lab3

- Elaborar a função powlist, que recebe uma lista e um número, retornando uma lista com os elementos elevados ao número recebido.-}
--OBS: sempre chamar com acum=1

- Utilizando listas infinitas (streams), elabore uma função que retorne uma lista dos n primeiros números da sequência definida por n0 = 2, ni = ni-1².
sequencia_lista num = [sequencia i | i <- [1,2..num]]

- Usando Guards ou Case, defina uma função que recebe dois números: 'e' e 'n'. O primeiro ('e') representa um elemento a ser repetido. O segundo representa a quantidade ('n') de repetições. A função deve devolver uma lista com 'n' replicas de 'e'. 
Detalhe: para funcionar, a lista deve usar guards ou case.
Por exemplo: replica 2 10 -> [2,2,2,2,2,2,2,2,2,2]

- Utilizando listas infinitas (streams), elabore uma função que retorne uma lista dos n primeiros números que são potências de 2 (i.e.: 2, 4, 8, 16...)
primeiros_pot2 num = [2 ^ i | i <- [1,2..num]]--take num [2,4..] --[x*2 | x <- [1..10]]

- Utilizando listas infinitas (streams), elabore uma função que retorne a lista dos n primeiros números da sequência de Fibonacci.
