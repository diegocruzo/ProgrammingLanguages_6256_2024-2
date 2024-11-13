-- Num. Factorial: n! = 1 x 2 x 3 x 4 x ... x (n-1) x n
-- 5! = 1*2*3*4*5 = 120

-- Función recursiva "factorial"
factorial :: Int -> Int
factorial x =
    if x == 1 
        then 1
    else
        x * factorial (x-1)

-- Función recursiva "crearLista"
crearLista :: Int -> [Int] -> [Int]
crearLista x y =
    if x == 0
        then y
    else
        crearLista (x-1) ((x-1):y)

crearListaOpt :: Int -> [Int] -> [Int]
crearListaOpt x y =
    if x == 0
        then y
    else
        crearListaOpt z (z:y)
        where z = x - 1 -- Uso de "where" para optimización de operaciones

duplicarLista :: [Int] -> [Int]
duplicarLista = map (*2)

filtrarParesLista :: [Int] -> [Int]
filtrarParesLista = filter (\x -> mod x 2 == 0)

incrementarLista :: [Int] -> [Int]
incrementarLista = map succ

-- Operador de composición (.)
combinar :: [Int] -> [Int]
combinar = incrementarLista .
    duplicarLista . 
    filtrarParesLista


listaUnValor x = x []

-- Operador de composición
createList = listaUnValor . crearListaOpt

numPrimo2 :: Int -> Int -> Bool
numPrimo2 x y =
    if y <= 0 
        then False
    else if mod x y == 0 && y /= 1
        then False
    else if y <= 2
        then True
    else
        numPrimo2 x (y - 1)

-- Protectores o guardias
encontrarNumPrimo :: Int -> Int -> Bool
encontrarNumPrimo x y
    | y <= 0 = False
    | mod x y == 0 && y /= 1 = False
    | y <= 2 = True
    | otherwise = encontrarNumPrimo x (y - 1)

numPrimo x = encontrarNumPrimo x (x-1)


lista = [1..7]

main :: IO()
main = do
    a <- readLn :: IO Int
    b <- readLn :: IO Int
    c <- readLn :: IO Int
    putStrLn("a = " ++ show(a))
    putStrLn("b = " ++ show(b))
    putStrLn("c = " ++ show(c))
    let num = a
    putStrLn("factorial " ++ show(num) ++ " = " ++ show(factorial num))
    putStrLn("crearLista " ++ show(num) ++ " [] = " ++ show(crearLista num []))
    putStrLn("crearListaOpt " ++ show(num) ++ " [] = " ++ show(crearListaOpt num []))
    putStrLn("duplicarLista " ++ show(lista) ++ " = " ++ show(duplicarLista lista))
    putStrLn("filtrarParesLista " ++ show(lista) ++ " = " ++ show(filtrarParesLista lista))
    putStrLn("incrementarLista " ++ show(lista) ++ " = " ++ show(incrementarLista lista))
    putStrLn("combinar " ++ show(lista) ++ " = " ++ show(combinar lista))
    putStrLn("createList " ++ show(num) ++ " = " ++ show(createList num))
    putStrLn("numPrimo " ++ show(num) ++ " = " ++ show(numPrimo num))