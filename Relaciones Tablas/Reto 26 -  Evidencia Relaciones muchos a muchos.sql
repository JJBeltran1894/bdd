-- usuario y grupo
create table  usuarios(
	id int not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	fecha_nacimiento date,

	constraint usuarios_pk primary key(id)
)

create table grupo(
	id int not null,
	nombre varchar(25) not null,
	descripcion varchar(75),
	fecha_creacion date,
	constraint grupo_pk primary key(id)
)

create table usuario_grupo(
	us_id int not null,
	gr_id int not null,
	constraint usuarios_fk foreign key(us_id) references usuarios(id),
	constraint grupo_fk foreign key(gr_id) references grupo(id),
	constraint usuario_grupo_pk primary key (us_id,gr_id)
)

-- habitaciones y huespedes

create table habitaciones(
	habitacion_numero int not null,
	precio_por_noche decimal not null,
	piso int not null,
	max_personas int,

	constraint habitaciones_pk primary key (habitacion_numero)
)

create table huespedes(
	id int not null,
	nombres varchar(45) not null,
	apellidos  varchar(45) not null,
	telefono char(10),
	correo varchar(45),
	direccion varchar(45),
	cuidad varchar (45),
	pais varchar(45),

	constraint huespedes_pk primary key (id)
)

create table reservas(
	inicio_fecha date not null,
	fin_fecha date not null,
	habitacion int not null,
	huesped_id int not null,

	constraint habitaciones_fk foreign key (habitacion) references habitaciones(habitacion_numero),
	constraint huespedes_fk foreign key (huesped_id) references huespedes(id),
	constraint habitaciones_huespedes_pk primary key (habitacion,huesped_id)
)

-- municipio y proyecto

create table ciudad(
	id int not null,
	nombre varchar(45)not null,
	constraint cuidad_pk primary key (id)
	
)

create table municipio (
	id int not null,
	nombre varchar(45) not null,
	ciudad_id int not null,
	constraint ciudad_fk foreign key (ciudad_id) references ciudad(id)
	constraint municipio_pk primary key (id)
)
alter table municipio
add column ciudad_id int not null
alter table municipio
add constraint ciudad_fk
foreign key (ciudad_id)
references ciudad(id)

create table proyecto (
	id int not null,
	proyecto varchar(50) not null,
	monto money not null,
	fecha_inicio date,
	fecha_entrega date,

	constraint proyecto_pk primary key (id)
)

create table proyecto_municipio(
	municipio_id int not null,
	proyecto_id int not null,

	constraint municipio_fk foreign key (municipio_id) references municipio(id),
	constraint proyecto_fk foreign key (proyecto_id) references proyecto(id),
	constraint municipio_proyecto_pk primary key (municipio_id,proyecto_id)
)

-- querys relacion muchos a muchos
-- usuarios y grupos
-- 1
select usr.nombre, gr.nombre 
from usuarios usr, grupo gr,usuario_grupo ug
where usr.id=ug.us_id 
and gr.id=ug.gr_id

select usuarios.nombre from usuarios where id in (
	select us_id from usuario_grupo where gr_id=1
)

select gr.nombre,count(ug.us_id) from usuario_grupo ug,grupo gr 
where gr.id=ug.gr_id group by gr.nombre
-- 2
select us.nombre,gr.nombre from usuarios us,grupo gr,usuario_grupo ug
where us.id=ug.us_id
and gr.id=ug.gr_id
and gr.nombre like '%intensivo%'

select usr.nombre from usuarios usr
where id in (select us_id from usuario_grupo where gr_id =2)

select gr.nombre, max (ug.us_id) from usuario_grupo ug,grupo gr
where gr.id=ug.gr_id 
group by gr.nombre

select gr.nombre, min (ug.us_id) from usuario_grupo ug,grupo gr
where gr.id=ug.gr_id 
group by gr.nombre

-- 3
select us.nombre,gr.fecha_creacion from usuarios us,grupo gr,usuario_grupo ug
where us.id=ug.us_id
and gr.id=ug.gr_id
and gr.fecha_creacion between '2020-03-08' and '2022-03-08'

select nombre from usuarios where id in (select us_id from usuario_grupo where gr_id =3)

select gr.descripcion, count(ug.us_id) from usuario_grupo ug, grupo gr
where gr.id=ug.gr_id
and gr.descripcion like '%matutino%'
group by gr.descripcion

-- habitaciones y huespedes
--1
select hab.habitacion_numero,hue.nombres,hue.apellidos 
from habitaciones hab,huespedes hue,reservas res
where hab.habitacion_numero=res.habitacion
and hue.id=res.huesped_id

select nombres,apellidos from huespedes
where id in (select huesped_id from reservas where habitacion =2)

select hab.habitacion_numero,count(res.huesped_id) from reservas res,habitaciones hab
where hab.habitacion_numero=res.habitacion
group by hab.habitacion_numero

--2

select hab.habitacion_numero,hab.piso,hue.nombres,hue.apellidos 
from huespedes hue,habitaciones hab,reservas res
where hab.piso =4
and hab.habitacion_numero=res.habitacion
and hue.id = res.huesped_id

select nombres,apellidos from huespedes
where id in (select huesped_id from reservas where habitacion=3)

select habitaciones.habitacion_numero, avg(reservas.huesped_id) 
from habitaciones, reservas 
where habitaciones.habitacion_numero = reservas.habitacion
group by habitaciones.habitacion_numero

--3

select  hab.habitacion_numero, hue.nombres, hue.apellidos 
from habitaciones hab, huespedes hue,reservas res
where hab.habitacion_numero = res.habitacion
and hue.id = res.huesped_id

select nombres,apellidos from huespedes
where id in (select huesped_id from reservas where habitacion=4)

select hab.habitacion_numero, sum (hab.precio_por_noche)
from habitaciones hab,reservas res
where hab.habitacion_numero = res.habitacion
group by hab.habitacion_numero

--  municipio y proyectos

--1

select mu.nombre, pr.proyecto 
from municipio mu, proyecto pr,proyecto_municipio pm
where mu.id=pm.municipio_id
and pr.id=pm.proyecto_id

select proyecto from proyecto
where id in (select proyecto_id from proyecto_municipio where municipio_id=1)

select mu.nombre,count(pm.proyecto_id)
from municipio mu,proyecto_municipio pm
where mu.id=pm.municipio_id
group by mu.nombre

--2

select mu.nombre, pr.proyecto
from municipio mu,proyecto pr,proyecto_municipio pm
where mu.id=pm.municipio_id
and pr.id=pm.proyecto_id
and mu.nombre like '%GAD%'

select mu.nombre, min (pm.proyecto_id)
from municipio mu,proyecto_municipio pm
where mu.id=pm.municipio_id
group by mu.nombre

--3

select mu.nombre,ci.nombre 
from municipio mu, ciudad ci
where ci.id=mu.ciudad_id

select proyecto from proyecto
where id in(select proyecto_id from proyecto_municipio where municipio_id=3)

select mu.nombre,max(pm.proyecto_id)
from municipio mu,proyecto_municipio pm
where mu.id=pm.municipio_id
group by mu.nombre
