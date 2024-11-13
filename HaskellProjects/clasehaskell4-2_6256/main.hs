-- Importar bibliotecas
import System.IO
import Data.List (isInfixOf)


main :: IO()
main = do
    -- Abrir un archivo
    repo <- openFile "datos.txt" ReadMode
    
    -- Leer el contenido del archivo
    contenido <- hGetContents repo
    
    -- Dividir el contenido del archivo en líneas
    let lineasDelArchivo = lines contenido
    
    -- Filtar las líneas que contienen la palabra "Edad"
    let lineasFiltradas = filter (isInfixOf "Edad") lineasDelArchivo
    
    -- Imprimir las líneas filtradas 
    putStrLn("Líneas que contienen la palabra 'Edad':")
    mapM_ putStrLn lineasFiltradas
    
    -- Cerrar el archivo
    hClose repo
    
    -- Abrir otro archivo para escribir en él
    repo2 <- openFile "datos2.txt" WriteMode
    
    -- Escribir las líneas filtradas en el segundo archivo abierto
    mapM_ (hPutStrLn repo2) lineasFiltradas
    
    -- Cerrar el archivo abierto
    hClose repo2
    
    
    
    
    
    
    