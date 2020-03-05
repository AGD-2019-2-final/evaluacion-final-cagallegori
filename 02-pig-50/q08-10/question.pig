-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute la cantidad de registros por letra de la 
-- columna 2 y clave de al columna 3; esto es, por ejemplo, la cantidad de 
-- registros en tienen la letra `b` en la columna 2 y la clave `jjj` en la 
-- columna 3 es:
-- 
--   ((b,jjj), 216)
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
datos = LOAD 'data.tsv' USING PigStorage('\t')
    AS (f1:CHARARRAY, f2:BAG{t:(p:CHARARRAY)}, f3:MAP[]);
datos2 = FOREACH datos GENERATE FLATTEN(f2), FLATTEN(f3);
datos3 = FOREACH datos2 GENERATE ($0,$1) AS f4;
datos3 = GROUP datos3 BY f4;
datos3 = FOREACH datos3 GENERATE group, COUNT($1);
STORE datos3 INTO 'output';