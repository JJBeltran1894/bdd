--Productos
-- 1. elimina todos los productos donde la descripcion sea null
delete from productos
where descripcion is null

-- Cuentas
-- 1. elimina todas las cuentas cuya cedula_propietario empiece por 10
delete from cuentas
where cedula_propietario like '10%'

--Estudiantes
-- 1. elimina todos lo estudiantes que tengan una cedula que termina por 05
delete from estudiantes
where cedula like '%05'

-- Registro entradas
-- 1. elimina todos los registros del mes de junio
delete from registros_entrada
where extract(month from fecha)=6

-- Videojuegos
-- 1. elimina los videojuegos cuya valoracion sea menor que 7
delete from videojuegos
where valoracion <7

-- Transacciones
-- 1. elimina las transferencias que se hayan hecho entre las 14:00 y 18:00 del mes de agosto del año actual
delete from transacciones
where hora>='14:00' and hora <='18:00' and extract(month from fecha)=8