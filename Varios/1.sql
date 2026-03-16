-- crea  la tabla personas
create table personas (
	cedula char(10) not null,
	nombre varchar(50) not null,
	estatura decimal,
	fecha_nacimiento date,
	hora_nacimiento time,
	cantidad_ahorrada money,
	numero_hijos int,
	constraint personas_pk primary key (cedula)
)

truncate table personas

alter table personas
add column apellido varchar(50) not null

insert into personas (cedula, nombre)
values ('1721403547','Juan Jose','')
