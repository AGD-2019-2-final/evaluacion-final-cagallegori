-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` Calcule la cantidad de registros por clave de la 
-- columna 3. En otras palabras, cuántos registros hay que tengan la clave 
-- `aaa`?
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
datos = LOAD 'data.tsv' USING PigStorage('\t')
    AS (f1:CHARARRAY, f2:BAG{t:(p:CHARARRAY)}, f3:MAP[]);
datos = FOREACH datos GENERATE FLATTEN(f3) AS (let:CHARARRAY);
glet = GROUP datos BY $0;
flet = FOREACH glet GENERATE FLATTEN(group) as (let), COUNT($1);
STORE flet INTO 'output' USING PigStorage(',');