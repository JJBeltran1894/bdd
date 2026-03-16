select numero_hijos,* from personas where numero_hijos='2'

select * from personas
where estatura > 1.50

select * from personas
where fecha_nacimiento<'22/05/2001'

select * from personas
where hora_nacimiento >= '10:05:10'

select * from personas
where hora_nacimiento 
between '10:00' and '23:47'

insert into personas (cedula,nombre,apellido,fecha_nacimiento)
values ('0714616123','Jeferson')


