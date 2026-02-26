create table productos (
    codigo int not null,
    nombre varchar(50) not null,
    descripcion varchar(200)
    precio money not null,
    stock int not null,

    constraint productos_pk primary key (codigo)
)

create table cuentas (
    numero_cuenta char(5) not null,
    cedula_propietario char(5) not null,
    fecha_creacion date not null,
    saldo money not null,
    
    constraint cuentas_pk primary key (numero_cuenta)
)

create table estudiantes (
    cedula char(10) not null,
    nombre varchar(50) not null,
    apellido varchar(50) not null,
    email varchar(50) not null,
    fecha_nacimiento date not null,

    constraint estudiantes_pk primary key (cedula)
)

create table registros_entrada (
    codigo_registro int not null,
    cedula_empleado char(10) not null,
    fecha date not null,
    hora time not null,

    constraint resgistros_entrada_pk primary key (codigo_registro)
)

create table videojuegos (
    codigo int not null,
    nombre varchar(100) not null,
    descripcion varchar(300),
    valoracion int,

    constraint videojuegos_pk primary key (codigo)
)

create table transacciones (
    codigo int not null,
    numero_cuenta char(5) not null,
    monto money not null,
    tipo char(1) not null,
    fecha date not null,
    hora time nt null,

    constraint transacciones_pk primary key (codigo)

)
