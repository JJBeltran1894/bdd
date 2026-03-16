-- FUNCIONES DE AGREGACION
-- cuentas con usuario
-- Funcion 1
select AVG (cast(saldo as numeric)) from cuentas
where cedula_propietario= '57523'

select * from cuentas

-- Funcion 2

select u.tipo_cuenta, count (*) from cuentas c 
join usuario u on c.cedula_propietario = u.cedula 
group by u.tipo_cuenta

-- clientes con compras
-- Funcion 1

select * from compras

select cedula,count (*), 
sum (monto) 
from compras 
group by cedula

-- Funcion 2
select fecha_compra, sum (monto) from compras 
where fecha_compra ='2025-11-12'
group by fecha_compra

-- estudiantes con profesores
-- Funcion 1
select codigo_profesor, count (*) from estudiantes 
group by  codigo_profesor

-- Funcion 2
select ROUND(AVG(extract(year from current_date)-extract(year from fecha_nacimiento))) from estudiantes

-- persona con prestamo
-- Funcion 1

select cedula,sum(monto) from prestamo 
group by cedula

-- Funcion 2

select count(*) from personas where numero_hijos >1

-- productos y ventas
-- Funcion 1

select MAX(cast(precio as numeric)) from productos
-- Funcion 2

select SUM(cantidad) from ventas

--transacciones banco
-- Funcion 1
select count(*) from transacciones where tipo = 'C'

-- Funcion 2

select numero_cuenta, round(AVG (cast (monto as decimal)),2)
from transacciones group by numero_cuenta

-- videojuegos y plataformas
-- Funcion 1
select codigo_videojuego, count(*) from plataformas 
group by codigo_videojuego  
-- Funcion 2
select round(AVG(valoracion),2) from videojuegos

-- registros entrada y empleado

-- Funcion 1
select cedula_empleado, count(*) from registros_entrada
group by cedula_empleado

-- Funcion 2
select min(fecha),max(fecha) from registros_entrada


