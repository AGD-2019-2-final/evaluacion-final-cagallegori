-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para responder la pregunta use el archivo `data.csv`.
-- 
-- Cuente la cantidad de personas nacidas por año.
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
-- 
u = LOAD 'data.csv' USING PigStorage(',') 
    AS (id:int, 
        firstname:CHARARRAY, 
        surname:CHARARRAY, 
        birthday:CHARARRAY, 
        color:CHARARRAY, 
        quantity:INT);
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
v = FOREACH u GENERATE ToDate(birthday,'yyyy-MM-dd') as fecho;
w = FOREACH v GENERATE ToString(fecho,'yyyy') as anio;
gw = GROUP w BY anio;
fw = FOREACH gw GENERATE FLATTEN(group) as (anio), COUNT($1);
STORE fw INTO 'output' USING PigStorage(',');