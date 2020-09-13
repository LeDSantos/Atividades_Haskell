{-Usando 'foldl' ou 'foldr', elabore a função 'somatorio', que recebe uma lista de números reais e devolve a soma dos números da lista. 

P.ex.: somatorio [1.0, 2.2, 4.0] --> 7.2-}


somatorio x = foldl (+) 0.0 x


{-Usando funções de ordem superior ('map', 'fold'...) e lambda (i.e., não nomeadas), elabore uma função que receba uma lista de números reais (representando um vetor Euclidiano) e calcule a norma de tal vetor, conforme a descrição seguinte (tal definição leva em conta que os valores do vetor estão normalizados entre 0.0 e 1.0): 

norma = raiz_quadrada(somatório dos quadrados dos elementos)

Ou seja, o somatório dos quadrados dos números presentes em tal lista.

P.ex.: norma [0.1, 0.2, 0.3, 0.4] --> 0.547722557505-}

fatorial :: Integer -> Integer
fatorial 0 = 1
fatorial n | n > 0 = n * fatorial (n-1)

raiz_quadrada :: Double -> Double
raiz_quadrada 0.0 = 1.0
raiz_quadrada x = x ** 0.5
--raiz_quadrada x | x > 0 = x ** 0.5
--raiz x = x (**) 0.5

norma lista = (foldr (+) 0.0 (map (** 2.0) lista)) ** 0.5

{-Usando funções de ordem superior ('map', 'fold'...), elabore uma função que receba duas listas de números reais (representando vetores Euclidianos) e calcule o produto interno entre esses vetores, conforme a descrição seguinte (tal definição leva em conta que os valores dos vetores estão normalizados entre 0.0 e 1.0): 

P.ex.: prod_int [0.1, 0.4, 0.9] [0.2, 0.4, 0.5] --> 0.63

Dica: a grande maioria das funções de ordem superior só trabalha com 1 lista (então a dica é tentar agrupar várias listas em uma só, por exemplo, em uma lista de pares ordenados).

Opcional: se desejar aumentar o grau de complexidade, utilize também uma função anônima (recursiva)!

curry :: ((a, b) -> c) -> a -> b -> c
curry converts an uncurried function to a curried function.
Examples
>>> curry fst 1 2
1

uncurry :: (a -> b -> c) -> (a, b) -> c
uncurry converts a curried function to a function on pairs.
Examples
>>> uncurry (+) (1,2)
3
>>> uncurry ($) (show, 1)
"1"
>>> map (uncurry max) [(1,2), (3,4), (6,8)]
[2,4,8]


-}

--prod_int l1 l2
--  | foldr (+) (map (fst * snd) (zip l1 l2))
--(uncurry max)
prod_int l1 l2 = foldr (+) 0 (map (uncurry (*)) (zip l1 l2))

{-Usando funções elaboradas nos exercícios anteriores (norma e produto interno), elabore uma função que receba duas listas de números reais (representando os vetores de palavras dos documentos) e calcule a similaridade entre esses dois documentos, conforme a descrição seguinte (tal definição leva em conta que os valores dos vetores estão normalizados entre 0.0 e 1.0): 

Perceba que a definição leva em conta o cálculo do cosseno entre os dois vetores (detalhes em: http://en.wikipedia.org/wiki/Cosine_similarity). 

 -}
sim l1 l2 = (prod_int l1 l2) / ((norma l1) * (norma l2))

main = do
  let l1 = [0.1, 0.4, 0.9, 0.0]
  let l2 = [0.2, 0.4, 0.5, 1.0]
  print (prod_int l1 l2)

  let lista = [0.1, 0.2, 0.3, 0.4]--[1.0, 2.2, 4.0]
  print (lista)
  print (norma lista)
  print (sim l1 l2)
  print (somatorio lista)

  print (raiz_quadrada 4.0)

  let l3 = (zip l1 l2)
  
  print (zip l1 l2)
  print (curry snd 2 3)
  print (snd (2,3))
  print (foldr (+) 0 (map (uncurry (*)) l3))
  --print (map (uncurry (*)) [(1,2), (3,4), (6,8)])


