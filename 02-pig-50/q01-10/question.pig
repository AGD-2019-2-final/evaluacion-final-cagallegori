-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute la cantidad de registros por letra. 
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
glet = GROUP datos BY let;
flet = FOREACH glet GENERATE FLATTEN(group) as (let), COUNT($1);
STORE flet INTO 'output';


