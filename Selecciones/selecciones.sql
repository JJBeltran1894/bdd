-- Productos
-- 1. select que traiga todos los productos que empiezan con Q
select * from productos where nombre like 'Q%'

-- 2. select que traiga los productos con una descripcion de null
select * from productos where descripcion is null

-- 3. select que traiga todos los productos con un precio ente 2 y 3
select * from productos where precio between 2 and 3

-- Cuentas
-- 1. select que traiga el numero de cuenta y el saldo de todas las cuentas
select numero_cuenta, saldo from cuentas

-- 2. select que traiga los registros ente el dia de hoy hasta 2 meses antes
select * from cuentas where fecha_creacion >= now() - interval '2 months' and fecha_creacion<=now()

-- 3. select que traiga el numero de cuenta y el saldo de las cuentas desde el dia de hoy 2 meses antes
select numero_cuenta,saldo from cuentas where fecha_creacion >= now() - interval '2 months' and fecha_creacion<=now()

-- Estudiantes
-- 1. select que traiga el nombre y la cedula de los estudiantes
select nombre,cedula from estudiantes

-- 2. select que traiga los nombres de todos los estudiantes cuya cedula empiece con 17
select nombre from estudiantes where cedula like '17%'

-- 3. select que traiga los nombres completos de todos los estudiantes cuyo nombre empiece con A

select nombre,apellido  from estudiantes where nombre like 'A%'

--Registros_entradas
-- 1. seleccionar todas las cedulas de empleado y fecha y hora de los registros de entrada
select cedula_empleado,fecha,hora from registros_entrada

-- 2. seleccionar los registro de entrada que esten entre las 7:00 y 14:00
select  * from registros_entrada where hora between '07:00' and '14:00'

-- 3. seleccionar lso registros de entrada que tengan horas superiores a 8:00
select * from registros_entrada where hora >= '8:00'

--Videojuegos
-- 1. seleccionar todos los videojuegos con un nombre que comience con "C"
select *  from videojuegos where nombre like 'C%'

-- 2. seleccionar videojuegos con una valoracion entre 9 y 10
select * from videojuegos where valoracion between 9 and 10

-- 3. seleccionar videojuegos con la descripcion null
select * from videojuegos where descripcion is null

-- Transacciones
-- 1. seleccionar todas las transacciones realizadas con un tipo D
select * from  transacciones where tipo ='D'

-- 2. seleccionar las transacciones con monts entre 200 y 2000
select * from  transacciones where monto between money(200) and money(2000)

-- 3. seleccionar el codigo, monto, tipo y fecha de las transacciones que tengas una fecha diferente de null
select codigo,monto,tipo,fecha from transacciones where fecha != null