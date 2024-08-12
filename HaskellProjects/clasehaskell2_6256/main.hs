-- Función cuadrado
cuadrado :: Double -> Double
cuadrado x = x * x

-- Función promedio
promedio :: Double -> Double -> Double -> Double
promedio x y z = (x + y + z) / 3

-- Función sumaMonedas
sumaMonedas :: Double -> Double -> Double -> Double
sumaMonedas x y z = x * 200 + y * 500 + z * 1000 

-- Función ultimaCifra
ultimaCifra :: Int -> Int
ultimaCifra x = x `rem` 10

-- Función penultimaCifra
penultimaCifra :: Int -> Int
penultimaCifra x = (x `div` 10) `rem` 10

main :: IO() -- Declaración o firma de tipo
main = do
    a <- readLn :: IO Double
    b <- readLn :: IO Double
    c <- readLn :: IO Double
    d <- readLn :: IO Int
    putStrLn $ "a: " ++ show(a) 
    putStrLn $ "b: " ++ show(b) 
    putStrLn $ "a / b = " ++ show (a / b)
    putStrLn "Funciones: "
    putStrLn $ "cuadrado 7 = " ++ show (cuadrado a) 
    putStrLn $ "promedio 7 5 4 = " ++ show (promedio a b c)
    putStrLn $ "sumaMonedas 7 5 4 = " ++ show (sumaMonedas a b c)
    putStrLn $ "ultimaCifra 6824 = " ++ show (ultimaCifra d)
    putStrLn $ "penultimaCifra 6824 = " ++ show (penultimaCifra d)
    
    
    
    
    