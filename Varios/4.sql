select * from cuentas where fecha_creacion >= now() - interval '2 months' and fecha_creacion<=now()

select numero_cuenta,saldo from cuentas where fecha_creacion >= now() - interval '2 months' and fecha_creacion<=now()

select nombre,apellido  from estudiantes where nombre like 'A%'

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