select * from personas
delete from personas
where cedula ='1721354987'

select * from transacciones

delete from transacciones
where hora>='14:00' and hora <='18:00' and extract(month from fecha)=8


--otras consultas

select * from personas
where nombre='Jefferson' and apellido='Farfan' and estatura is not null

select * from personas
where nombre='Santiago' or nombre='Martina' or nombre='Andres'

-- personas que se llamen jefferson o santiago y estatura null

select *from personas
where (nombre='Santiago' or nombre='Martina') and (estatura is null or estatura >1.5)

select concat(nombre||' '||apellido),cedula from estudiantes where cedula like '%06' or cedula like '17%'

select * from registros_entrada

select * from registros_entrada where extract(month from fecha)=8 and cedula_empleado like '17%' and (hora>'08:00' and hora<'12:00')

select * from videojuegos where descripcion like '%guerra%' 
and ((valoracion>7 and nombre like 'C%') or (valoracion>8 and nombre like 'D%'))

select * from transacciones where codigo between 1 and 5 and numero_cuenta between '22002' and '22004'
and fecha between '26/05/2026' and '29/05/2026'