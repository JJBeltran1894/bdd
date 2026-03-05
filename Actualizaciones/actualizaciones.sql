-- Productos
-- 1. actualizar stock a 0 en todos los productos donde la descripcion sea null
update productos set stock=0 where descripcion is null
-- Cuentas
-- 1. actualizarel saldo a 10 de las cuentas cuya cedula_propietario empiece por 17
update cuentas set saldo=10 where numero_cuenta in (select numero_cuenta from cuentas where cedula_propietario like '17%' limit 10);

-- Estudiantes
-- actualizar el apellido por Hernandez a todos los estudiantes que tengan una cedula que empiecer por 17
update estudiantes set apellido='Hernandez'  where cedula like '17%'

--Registros_entrada
--1 actualiza todas las cedulas de registro_entrada por "082345679" para todos los registros del mes de agosto
update registros_entrada set cedula_empleado='082345679' where extract(month from fecha)=8

--Video Juegos
-- 1. actualiza todas las descripciones de los videojuegos cuya valoracion sea mayor que 9 por "Mejor Puntuado"
update videojuegos set descripcion='Mejor Puntuado' where valoracion>9

-- Transacciones
-- 1. actualiza tipo de todos los registros que tengan una transaccion mayor a 100 y menor que 500, que se hayan llevado acabo el mes de septiembre con horas entre las 14:00 y 20:00
update transacciones set tipo='T' where monto >money(100) and monto <money(500) 
and extract(month from fecha)=9 and extract(hour from hora)>=14 and extract(hour from hora)>20;