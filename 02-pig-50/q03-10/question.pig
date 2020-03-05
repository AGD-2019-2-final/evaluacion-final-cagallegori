-- Pregunta
-- ===========================================================================
-- 
-- Obtenga los cinco (5) valores más pequeños de la 3ra columna.
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
datos = LOAD 'data.tsv' USING PigStorage('\t')
    AS (let:CHARARRAY,
        date:CHARARRAY,
        num:INT);
col3 = FOREACH datos GENERATE num;
col3 = ORDER col3 BY $0;
col3 = LIMIT col3 5;
STORE col3 INTO 'output';