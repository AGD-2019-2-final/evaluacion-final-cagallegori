-- Pregunta
-- ===========================================================================
-- 
-- Ordene el archivo `data.tsv`  por letra y valor (3ra columna).
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
-- 
--  >>> Escriba el codigo del mapper a partir de este punto <<<
datos = LOAD 'data.tsv' USING PigStorage('\t')
    AS (let:CHARARRAY,
        date:CHARARRAY,
        num:INT);
datoso = ORDER datos BY $0, $2;
STORE datoso INTO 'output';
