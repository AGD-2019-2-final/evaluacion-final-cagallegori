-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute Calcule la cantidad de registros en que 
-- aparece cada letra minúscula en la columna 2.
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
datos = LOAD 'data.tsv' USING PigStorage('\t')
    AS (f1:CHARARRAY, f2:BAG{t:(p:CHARARRAY)}, f3:CHARARRAY);
datos = FOREACH datos GENERATE FLATTEN(f2);
glet = GROUP datos BY $0;
flet = FOREACH glet GENERATE FLATTEN(group) as (let), COUNT($1);
STORE flet INTO 'output' USING PigStorage('\t');
