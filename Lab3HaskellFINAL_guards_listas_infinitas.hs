invertelst x
    | null x = []
    | otherwise = invertelst (tail x) ++ [head x]

{-Elaborar a função powlist, que recebe uma lista e um número, retornando uma lista com os elementos elevados ao número recebido.-}
--OBS: sempre chamar com acum=1
pot [acum, expo, num]  --acumulado, expoente, numero -- 
    | (expo == 0) = [1, expo, num]
    | (expo == 1) = [acum*num, expo, num]
    | otherwise = [head (pot([acum*num, expo-1, num])), expo, num]

powlist x expo     --lista, expoente
    | null x = []
    | otherwise = [head (pot [1, expo, (head x)])] ++ (powlist (tail x) expo)

{-Utilizando listas infinitas (streams), elabore uma função que retorne uma lista dos n primeiros números da sequência definida por n0 = 2, ni = ni-1².-}
sequencia_lista num = [sequencia i | i <- [1,2..num]]

sequencia i
  | (i == 0) = 2
  | otherwise = (sequencia (i - 1)) ^ 2

{-Usando Guards ou Case, defina uma função que recebe dois números: 'e' e 'n'. O primeiro ('e') representa um elemento a ser repetido. O segundo representa a quantidade ('n') de repetições. A função deve devolver uma lista com 'n' replicas de 'e'. 

Detalhe: para funcionar, a lista deve usar guards ou case.

Por exemplo: replica 2 10 -> [2,2,2,2,2,2,2,2,2,2]-}

replica ele num
  | (num == 0) = []
  | otherwise = [ele] ++ (replica ele (num - 1))

{-Utilizando listas infinitas (streams), elabore uma função que retorne uma lista dos n primeiros números que são potências de 2 (i.e.: 2, 4, 8, 16...) -}

primeiros_pot2 num = [2 ^ i | i <- [1,2..num]]--take num [2,4..] --[x*2 | x <- [1..10]]

{-Utilizando listas infinitas (streams), elabore uma função que retorne a lista dos n primeiros números da sequência de Fibonacci. -}
--[ x | x <- [10..20], x /= 13, x /= 15, x /= 19]  
--[10,11,12,14,16,17,18,20] 

fibonacci_lista num = [fibonacci i | i <- [1,2..num]]

fibonacci n
  | (n == 0) = 0
  | (n == 1) = 1
  | otherwise = (fibonacci (n - 1)) + (fibonacci (n - 2))

main = do
  print (replica 2 10)
  print (primeiros_pot2 10)
  print (sequencia_lista 0)
  print (sequencia_lista 1)
  print (sequencia_lista 2)
  print (sequencia_lista 3)
  print (sequencia_lista 4)
  print (sequencia_lista 5)
  print (sequencia_lista 6)
  print (fibonacci_lista 0)
  print (fibonacci_lista 1)
  print (fibonacci_lista 2)
  print (fibonacci_lista 3)
  print (fibonacci_lista 4)
  print (fibonacci_lista 5)
  print (fibonacci_lista 6)

