-- AGREGACION
-- OPERACIONES SOBRE UN CONJUNTO DE RESULTADOS
-- COUNT

select * 
from personas per,estado_civil ec
where per.estado_civil_codigo = ec.codigo
and estado_civil_codigo='C'

select count (ec.codigo)
from personas per,estado_civil ec
where per.estado_civil_codigo = ec.codigo
and estado_civil_codigo='C'

-- AVG  - PROMEDIO

select AVG(estatura) from personas

select AVG(cast (cantidad_ahorrada as numeric))
from personas

select AVG (cast(cantidad_ahorrada as numeric))
from personas per,estado_civil ec
where per.estado_civil_codigo = ec.codigo
and estado_civil_codigo = 'C'

-- SUM MAX MIN 

select MAX(estatura) from personas

select MIN(cast (cantidad_ahorrada as numeric))
from personas

select MAX (cast(cantidad_ahorrada as numeric))
from personas per,estado_civil ec
where per.estado_civil_codigo = ec.codigo
and estado_civil_codigo = 'C'

-- GROUP BY

select estado_civil_codigo, sum (*) from personas
group by estado_civil_codigo

select estado_civil_codigo, sum (numero_hijos) from personas
group by estado_civil_codigo




