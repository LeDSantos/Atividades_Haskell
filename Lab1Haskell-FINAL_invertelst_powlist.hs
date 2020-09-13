{- 
Elaborar a função invertelst, que recebe uma lista e retorna ela invertida.

Elaborar a função powlist, que recebe uma lista e um número, retornando uma lista com os elementos elevados ao número recebido.
 -}


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

-- exemplo
dobrarLista :: [Integer] -> [Integer]
dobrarLista xs
    | null xs   = []
    | otherwise = 2 * (head xs) : dobrarLista (tail xs)

main = do
  let lista1 = [1,2,34,56,6,99,2,444]
  let lista2 = "TEXTOTESTE"
  print lista1
  print (dobrarLista lista1)
  print (powlist lista1 0)
  print (powlist lista1 1)
  print (powlist lista1 2)
  print (powlist lista1 3)
  print (invertelst lista1)

  -- [acum, expo, num]
  let expNum = [1,4,5]
  print (pot [1,0,5])
  print (pot [1,1,5])
  print (pot [0,4,5])
  print (pot [1,4,5])


  print (invertelst lista2)
