-- RELACION USUARIO CUENTAS

select * from cuentas


create table usuario (
	cedula char(5) not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	tipo_cuenta varchar(20),
	limite_credito decimal(10,5),
	constraint usuario_pk primary key(cedula)
)

alter table cuentas
add constraint cuentas_usuario_fk
foreign key (cedula_propietario)
references usuario(cedula)

-- Inserts Usuarios


insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('12575','Andres','Lopez','AHORROS',3500);

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('97545','Maria','Correa','AHORROS',10000);

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('45813','Diego','Morales','CORRIENTE',11500);

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('57523','Romina','Artega','CORRIENTE',1500);

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('75781','Carmen','Dominguez','AHORROS',25000);

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('25583','Jimena','Andrade','CORRIENTE',9500);

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('12571','Carlos','Franco','CORRIENTE',7000);

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('17217','Santiago','Mena','CORRIENTE',7000);

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('10055','Santiago','Mena','AHORROS',1000);

insert into usuario (cedula,nombre,apellido,tipo_cuenta,limite_credito)
values ('50850','Camila','Moreno','AHORROS',6500);



--Inserts Cuentas


insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('25261','12575','01/11/2022',127);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('21247','97545','21/08/2022',1000);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('54697','45813','21/09/2022',725);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('25771','57523','13/12/2022',270.56);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('85276','75781','15/12/2022',1925.11);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('51291','25583','16/02/2023',251.05);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('95231','12571','13/02/2023',127.25);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('20081','17217','19/04/2023',887.5);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('98881','10055','21/05/2023',487);

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('90889','50850','17/09/2023',47.09);

-- RELACION CLIENTES COMPRAS
SELECT * from  compras

create table compras (
	id_compra int not null,
	cedula char(10) not null,
	fecha_compra date not null,
	monto decimal(10,2),
	constraint compras_pk primary key(id_compra)
)

alter table compras
add constraint compras_clientes_fk
foreign key (cedula)
references clientes(cedula)

--Inserts Clientes

insert into clientes (cedula,nombre,apellido)
values ('1721548470','Ana','Bolena');

insert into clientes (cedula,nombre,apellido)
values ('0533248488','Diego','Casa');

insert into clientes (cedula,nombre,apellido)
values ('0955872414','Ana','Bolena');

insert into clientes (cedula,nombre,apellido)
values ('1204680041','Dayana','Armijos');

insert into clientes (cedula,nombre,apellido)
values ('1800066354','Monica','Sarmiento');

insert into clientes (cedula,nombre,apellido)
values ('1054258441','Jorge','Bejarano');

insert into clientes (cedula,nombre,apellido)
values ('1204680071','Jose','Carreño');

insert into clientes (cedula,nombre,apellido)
values ('0915274414','Luis','Pozo');

insert into clientes (cedula,nombre,apellido)
values ('0531084838','Monica','Diaz');

insert into clientes (cedula,nombre,apellido)
values ('1821546410','Ramiro','Suarez');

--Inserts Compras

insert into compras (id_compra,cedula,fecha_compra,monto)
values ('1','1721548470','12/10/2025',30.50);

insert into compras (id_compra,cedula,fecha_compra,monto)
values ('2','0533248488','13/10/2025',121.50);

insert into compras (id_compra,cedula,fecha_compra,monto)
values ('3','1721548470','12/11/2025',37.6);

insert into compras (id_compra,cedula,fecha_compra,monto)
values ('4','0955872414','21/11/2025',158.55);

insert into compras (id_compra,cedula,fecha_compra,monto)
values ('5','1204680041','26/11/2025',70);

insert into compras (id_compra,cedula,fecha_compra,monto)
values ('6','1800066354','06/12/2025',85.5);

insert into compras (id_compra,cedula,fecha_compra,monto)
values ('7','1204680071','15/12/2025',45.1);

insert into compras (id_compra,cedula,fecha_compra,monto)
values ('8','0915274414','22/12/2025',12.5);

insert into compras (id_compra,cedula,fecha_compra,monto)
values ('9','0531084838','26/12/2025',5);

insert into compras (id_compra,cedula,fecha_compra,monto)
values ('10','1821546410','31/12/2025',99.1);

-- RELACION PRODUCTO VENTAS
SELECT * from  productos

create table ventas (
	id_venta int not null,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint ventas_pk primary key(id_venta)
)

alter table ventas
add constraint ventas_productos_fk
foreign key (codigo_producto)
references productos(codigo)

--Inserts Productos

insert into productos (codigo, nombre, descripcion, precio, stock) 
values ('1', 'Mouse Gamer', 'Mouse ergonómico RGB', 25.50, 50);

insert into productos (codigo, nombre, descripcion, precio, stock) 
values ('2', 'Monitor LED', '24 pulgadas Full HD', 150.00, 20);

insert into productos (codigo, nombre, descripcion, precio, stock) 
values ('3', 'Memoria RAM', 'Módulo 8GB DDR4', 45.00, 30);

insert into productos (codigo, nombre, descripcion, precio, stock) 
values ('4', 'Teclado Mecánico', NULL, 60.00, 15);

insert into productos (codigo, nombre, descripcion, precio, stock) 
values ('5', 'Disco Duro SSD', '500GB NVMe', 55.00, 40);

insert into productos (codigo, nombre, descripcion, precio, stock) 
values ('6', 'Procesador i5', '12va Generación', 210.00, 10);

insert into productos (codigo, nombre, descripcion, precio, stock) 
values ('7', 'Fuente de Poder', '650W Bronze', 75.00, 12);

insert into productos (codigo, nombre, descripcion, precio, stock) 
values ('8', 'Gabinete ATX', 'Vidrio Templado', 85.00, 8);

insert into productos (codigo, nombre, descripcion, precio, stock) 
values ('9', 'Microfono USB', 'Calidad de estudio', 95.00, 10);

insert into productos (codigo, nombre, descripcion, precio, stock) 
values ('10', 'Adaptador Wi-Fi', 'Banda dual AC', 18.00, 60);

-- Inserts Ventas

insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values ('1', 1, '10/03/2026', 2);

insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values ('2', 3, '11/03/2026', 5);

insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values ('3', 5, '12/03/2026', 1);

insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values ('4', 9, '13/03/2026', 1);

insert into ventas (id_venta, codigo_producto, fecha_venta, cantidad) 
values ('5', 2, '15/03/2026', 3);

insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values ('6','2','16/03/2026',1);

insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values ('7','4','17/03/2026',2);

insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values ('8','10','18/03/2026',3);

insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values ('9','1','19/03/2026',1);

insert into ventas (id_venta,codigo_producto,fecha_venta,cantidad)
values ('10','7','20/03/2026',1);

-- RELACION VIDEOJUEGO PLATAFORMA

select * from  videojuegos

create table plataformas (
	id_plataforma int not null,
	nombre_plataforma varchar(50) not null,
	codigo_videojuego int, 
	
	constraint plataformas_pk primary key(id_plataforma)
)

alter table plataformas
add constraint plataformas_videojuegos_fk
foreign key (codigo_videojuego)
references videojuegos(codigo)

-- Inserts Videojuegos

insert into videojuegos (codigo,nombre,descripcion,valoracion) 
values ('1','God of war','un guerrero espartano contra los dioses',10);

insert into videojuegos (codigo,nombre,descripcion,valoracion) 
values ('2','Call of Duty','simulador de guerra en primera persona',9);

insert into videojuegos (codigo,nombre,descripcion,valoracion) 
values ('3','Cuphead','juego de plataformas con estilo clásico',8);

insert into videojuegos (codigo,nombre,descripcion,valoracion) 
values ('4','Diablo IV','rpg de acción en un mundo oscuro',9);

insert into videojuegos (codigo,nombre,descripcion,valoracion) 
values ('5','Dark Souls','un reto de supervivencia y guerra interna',9);

insert into videojuegos (codigo,nombre,descripcion,valoracion) 
values ('6','Cyberpunk 2077','mundo abierto futurista en night city',8);

insert into videojuegos (codigo,nombre,descripcion,valoracion) 
values ('7','Doom Eternal','guerra contra las fuerzas del infierno',10);

insert into videojuegos (codigo,nombre,descripcion,valoracion) 
values ('8','Dead Space','horror espacial y supervivencia extrema',9);

insert into videojuegos (codigo,nombre,descripcion,valoracion) 
values ('9','Crash Bandicoot','aventura de plataformas clásica',7);

insert into videojuegos (codigo,nombre,descripcion,valoracion) 
values ('10','Gears of War','guerra táctica contra los locust',9);

-- Inserts Plataformas

insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego) 
values ('1','PlayStation 5','1');

insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego) 
values ('2','PC Master Race','2');

insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego) 
values ('3','Xbox Series X','10');

insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego) 
values ('4','Nintendo Switch','9');

insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego) 
values ('5','PlayStation 4','5');

insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego) 
values ('6','Steam Deck','3');

insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego) 
values ('7','PlayStation 5','4');

insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego) 
values ('8','Xbox Series S','7');

insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego) 
values ('9','Epic Games Store','6');

insert into plataformas (id_plataforma,nombre_plataforma,codigo_videojuego) 
values ('10','PlayStation 5','8');

-- RELACION PROFESORES ESTUDIANTES

select * from  estudiantes

create table profesores (
	codigo int not null,
	nombre varchar(50) not null,	
	constraint profesores_pk primary key(codigo)
)

alter table estudiantes
add constraint estudiantes_profesores_fk
foreign key (codigo_profesor)
references profesores(codigo)

-- Inserts Profesores

insert into profesores (codigo,nombre)
values ('1','Francisco');

insert into profesores (codigo,nombre) 
values ('2','Ana Maria');

insert into profesores (codigo,nombre) 
values ('3','Roberto');

insert into profesores (codigo,nombre) 
values ('4','Lucia');

insert into profesores (codigo,nombre) 
values ('5','Ricardo');

insert into profesores (codigo,nombre) 
values ('6','Elena');

insert into profesores (codigo,nombre) 
values ('7','Fernando');

insert into profesores (codigo,nombre) 
values ('8','Gabriela');

insert into profesores (codigo,nombre) 
values ('9','Julian');

insert into profesores (codigo,nombre) 
values ('10','Marta');

-- Inserts Estudiantes

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor) 
values ('1725487961','Juan','Nieto','juan.n@mail.com','15/05/2005','1');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor) 
values ('0915274414','Maria','Luna','m.luna@mail.com','20/08/2006','1');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor) 
values ('1821546410','Carlos','Fuentes','c.fuentes@mail.com','10/01/2005','2');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor) 
values ('0531084838','Ana','Mendoza','ana.men@mail.com','12/12/2004','3');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor) 
values ('1718192021','Luis','Santana','luis.s@mail.com','05/03/2005','1');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor) 
values ('1011121314','Pedro','Perez','p.perez@mail.com','22/07/2006','4');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor) 
values ('0102030405','Laura','Gomez','l.gomez@mail.com','30/09/2005','5');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor) 
values ('0607080910','Sofia','Diaz','s.diaz@mail.com','14/02/2006','2');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor) 
values ('1112131415','Diego','Ruiz','d.ruiz@mail.com','18/11/2004','6');

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento,codigo_profesor) 
values ('2223242526','Elena','Torres','e.torres@mail.com','01/06/2005','7');

-- RELACION REGISTROS ENTRADA EMPLEADOS

select * from  registros_entrada

create table empleado (
	codigo_empleado int not null,
	nombre varchar(25) not null,	
	fecha date not null,
	hora time not null,
	constraint empleado_pk primary key(codigo_empleado)
)

alter table registros_entrada
add column codigo_empleado int

alter table registros_entrada
add constraint registros_entrada_empleado_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado)

-- Inserts Empleados

insert into empleado (codigo_empleado,nombre,fecha,hora) 
values ('2201','Marco Polo','01/08/2023','08:00');

insert into empleado (codigo_empleado,nombre,fecha,hora) 
values ('2202','Elena Nito','01/08/2023','08:15');

insert into empleado (codigo_empleado,nombre,fecha,hora) 
values ('2203','Aquiles Brinco','02/08/2023','07:50');

insert into empleado (codigo_empleado,nombre,fecha,hora) 
values ('2204','Rosa Melano','02/08/2023','08:30');

insert into empleado (codigo_empleado,nombre,fecha,hora) 
values ('2205','Alan Brito','03/08/2023','09:00');

insert into empleado (codigo_empleado,nombre,fecha,hora) 
values ('2206','Esteban Dido','03/08/2023','08:05');

insert into empleado (codigo_empleado,nombre,fecha,hora) 
values ('2207','Zila Vaca','04/08/2023','08:10');

insert into empleado (codigo_empleado,nombre,fecha,hora) 
values ('2208','Luz Rojas','04/08/2023','07:55');

insert into empleado (codigo_empleado,nombre,fecha,hora) 
values ('2209','Paco Mer','05/08/2023','08:20');

insert into empleado (codigo_empleado,nombre,fecha,hora) 
values ('2210','Ines Tornillo','05/08/2023','08:45');

-- Inserts Registros entrada

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado) 
values ('1','1710203040','15/08/2023','08:30','2201');

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado) 
values ('2','0920304050','10/09/2023','09:15','2202');

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado) 
values ('3','1830405060','22/10/2023','10:00','2204');

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado) 
values ('4','0540506070','05/11/2023','11:45','2201');

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado) 
values ('5','1750607080','12/12/2023','08:05','2205');

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado) 
values ('6','0960708090','01/09/2023','12:30','2206');

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado) 
values ('7','1870809010','20/08/2023','09:50','2207');

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado) 
values ('8','0580901020','14/10/2023','10:20','2209');

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado) 
values ('9','1790102030','30/11/2023','08:55','2210');

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora,codigo_empleado) 
values ('10','0102030405','05/12/2023','12:10','2201');

-- RELACION PERSONA PRESTAMO

select * from  personas

create table prestamo (
	cedula char(10) not null,
	monto money(25) not null,	
	fecha_prestamno date not null,
	hora_prestamo time not null,
	garante varchar(40) not null
	constraint prestamo_pk primary key(cedula)
)


alter table prestamo
add constraint prestamo_persona_fk
foreign key (cedula)
references personas(cedula)

-- Inserts personas

insert into persona (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos) 
values ('1710203041','Sean','Connery',1.88,'25/08/1930','06:30',5000.50,3);

insert into persona (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos) 
values ('0920304051','Maria','Lopez',1.65,'12/03/1995','14:20',1200.00,1);

insert into persona (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos) 
values ('1830405061','Carlos','Andrade',1.75,'05/11/1988','08:15',340.25,2);

insert into persona (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos) 
values ('0540506071','Ana','Guerra',1.60,'22/07/1992','10:45',2100.00,0);

insert into persona (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos) 
values ('1750607081','Luis','Mena',1.70,'15/01/2000','22:10',85.00,0);

insert into persona (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos) 
values ('0960708091','Elena','Casas',1.68,'30/09/1985','05:50',4500.00,2);

insert into persona (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos) 
values ('1870809011','Diego','Salas',1.80,'11/04/1993','11:25',120.75,1);

insert into persona (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos) 
values ('0580901021','Paula','Velez',1.58,'02/12/1998','13:00',900.00,0);

insert into persona (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos) 
values ('1790102031','Rene','Higuita',1.76,'27/08/1966','16:40',670.00,3);

insert into persona (cedula,nombre,apellido,estatura,fecha_nacimiento,hora_nacimiento,cantidad_ahorrada,numero_hijos) 
values ('0102030406','Juan','Piguave',1.72,'14/06/1990','09:10',25.00,4);

-- Inserts Prestamo

insert into prestamo (cedula,monto,fecha_prestamo,hora_prestamo,garante) 
values ('1710203041',500.00,'10/01/2026','09:30','Thomas Wayne');

insert into prestamo (cedula,monto,fecha_prestamo,hora_prestamo,garante) 
values ('0920304051',150.00,'12/01/2026','10:15','Marta Diaz');

insert into prestamo (cedula,monto,fecha_prestamo,hora_prestamo,garante) 
values ('1830405061',900.00,'15/01/2026','11:00','Robert Smith');

insert into prestamo (cedula,monto,fecha_prestamo,hora_prestamo,garante) 
values ('0540506071',250.00,'18/01/2026','14:30','Julio Jaramillo');

insert into prestamo (cedula,monto,fecha_prestamo,hora_prestamo,garante) 
values ('1750607081',1000.00,'20/01/2026','16:00','Bruce Banner');

insert into prestamo (cedula,monto,fecha_prestamo,hora_prestamo,garante) 
values ('1710203041',120.00,'22/01/2026','08:45','Alfred Pennyworth');

insert into prestamo (cedula,monto,fecha_prestamo,hora_prestamo,garante) 
values ('0960708091',750.00,'25/01/2026','12:20','Diana Prince');

insert into prestamo (cedula,monto,fecha_prestamo,hora_prestamo,garante) 
values ('1870809011',300.00,'28/01/2026','15:10','Steve Rogers');

insert into prestamo (cedula,monto,fecha_prestamo,hora_prestamo,garante) 
values ('0580901021',450.00,'01/02/2026','10:50','Tony Stark');

insert into prestamo (cedula,monto,fecha_prestamo,hora_prestamo,garante) 
values ('1790102031',600.00,'05/02/2026','09:15','Pibe Valderrama');

-- RELACION TRASACCIONES BANCO

select * from  transacciones

create table banco (
	codigo_banco int not null,
	codigo_transaccion money not null,	
	detalle date not null,
	constraint empleado_pk primary key(codigo_empleado)
)


alter table banco
add constraint banco_transacciones_fk
foreign key (codigo_transaccion)
references transacciones(codigo)

-- Inserts Transacciones

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora) 
values (1,'22001',150.50,'C','10/03/2026','09:00');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora) 
values (2,'22002',200.00,'C','11/03/2026','10:30');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora) 
values (3,'22004',50.75,'C','12/03/2026','11:15');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora) 
values (4,'11005',300.00,'D','13/03/2026','14:20');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora) 
values (5,'11006',1000.00,'C','14/03/2026','16:45');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora) 
values (6,'22003',45.00,'D','15/03/2026','08:10');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora) 
values (7,'11008',120.00,'D','15/03/2026','12:00');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora) 
values (8,'22001',90.00,'D','16/03/2026','13:30');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora) 
values (9,'11010',500.25,'C','17/03/2026','09:50');

insert into transacciones (codigo,numero_cuenta,monto,tipo,fecha,hora) 
values (10,'22004',15.00,'D','18/03/2026','11:05');

-- Inserts Banco

insert into banco (codigo_banco,codigo_transaccion,detalle)
values (101,1,'deposito por ventanilla');

insert into banco (codigo_banco,codigo_transaccion,detalle)
values (102,2,'transferencia recibida');

insert into banco (codigo_banco,codigo_transaccion,detalle)
values (103,3,'abono de intereses');

insert into banco (codigo_banco,codigo_transaccion,detalle)
values (104,4,'pago de servicios');

insert into banco (codigo_banco,codigo_transaccion,detalle)
values (105,5,'deposito cajero automatico');

insert into banco (codigo_banco,codigo_transaccion,detalle)
values (106,6,'retiro cajero');

insert into banco (codigo_banco,codigo_transaccion,detalle)
values (107,7,'compra en comercio');

insert into banco (codigo_banco,codigo_transaccion,detalle)
values (108,8,'retiro ventanilla');

insert into banco (codigo_banco,codigo_transaccion,detalle)
values (109,9,'transferencia internacional');

insert into banco (codigo_banco,codigo_transaccion,detalle)
values (110,10,'pago de prestamo');




