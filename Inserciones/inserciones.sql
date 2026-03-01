--productos

insert into productos (codigo,nombre,descripcion,precio,stock)
values (4568745,'SSD ADATA 240 GB','DISCO DURO SOLIDO SATA 240 GB',56.75,12)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (1255847,'CAMARA HIKVISION TIPO BALA 5MP ','CAMARA TIPO BALA PARA EXTERIORES, 40MTS, 5MPX VARIFOCAL',89.12,50)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (4788236,'MEMORY FLASH KINGSTON 64GB ','MEMORY FLASH USB 3.0, 64GB, METALICA',12.48,60)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (9854584,'ROLLO CABLE UTP CAT 6 SIEMON','ROLLO DE 305MTS, CAT 6 EXTERIORES, 100% COBRE',398.26,15)

insert into productos (codigo,nombre,descripcion,precio,stock)
values (3584252,'MOUSE ERGONOMICO GENIUS ','MOUSE ERGONOMICO, BATERIA INTERNA LIPO, GENIUS',19.68,25)

insert into productos (codigo,nombre,precio,stock)
values (5844581,'AURICULARES DIADEMA LOGITECH H111',25.35,36)

insert into productos (codigo,nombre,precio,stock)
values (1224584,'IMPRESORA MULTIFUCION EPSON L4360',286.20,11)

insert into productos (codigo,nombre,precio,stock)
values (5254577,'CINTA DE RESINA 10MM*74M',7.20,20)

-- cuentas

select * from cuentas

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('25261','12575','01/02/2026',127)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('21247','97545','08/02/2026',10000)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('54697','45813','10/02/2026',35125)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('25771','57523','13/02/2026',270.56)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('85276','75781','15/02/2026',1925.11)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('51291','25583','16/02/2026',700251.05)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('95231','12575','13/02/2026',127)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('20081','17217','19/02/2026',10127.5)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('98881','10055','21/02/2026',4687)

insert into cuentas (numero_cuenta,cedula_propietario,fecha_creacion,saldo)
values ('90889','50850','27/02/2026',47.09)


-- estudiantes

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values('0912458456','Carlos','Morales','ccarlo@gmail.com','19/06/2006')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values('1721413668','Yadira','Zarate','yzarate556@hotmail.com','21/01/2002')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values('0512488801','Erika','Armas','eri_armas02@hotmail.com','18/08/1999')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values('1235584212','Lucio','Castellano','lcastellano.ec@yahoo.com','26/02/2008')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values('0912667551','Carmen','Linares','linares_carmen55@gmail.com','01/10/2005')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values('1721403544','Diego','Cobeña','dieguito99cob@outlook.com','18/11/1999')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values('0921403544','Fernando','Pallo','hferchopch2@outlook.com','21/12/1989')

insert into estudiantes (cedula,nombre,apellido,email,fecha_nacimiento)
values('1721403549','Juan Jose','Beltran','juanjbeltran94@gmail.com','18/09/1994')

select * from estudiantes 


 -- registros

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('1','0921403544','05/01/2026','07:09')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('2','1721403549','06/01/2026','07:15')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('3','0512488801','07/01/2026','07:21')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('4','0912088803','07/01/2026','07:22')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('5','0912088803','07/01/2026','07:29')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('6','0962458456','10/01/2026','07:35')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('7','1721413668','11/01/2026','07:30')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('8','0512416801','15/01/2026','07:46')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('9','2112466809','16/01/2026','07:53')

insert into registros_entrada (codigo_registro,cedula_empleado,fecha,hora)
values ('10','1721403544','22/01/2026','07:59')

select * from registros_entrada




--videojuegos

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values('2026001','CRASH BANDICOOT','LAS DIVERIDAS AVENTURAS DE UN MARSUPIAL HERBIVORO',10)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values('2025099','MARIO KART','EMOCIONANTES COMPETENCIAS EN UN DIVERTIDO MUNDO CON LOS PERSONAJES DE MARIO BROS',8.5)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values('2023584','PUBG', 'BATTLE ROYALE  APASIONANTE Y TACTICO, SOBREVIVE CHICKEN DINER',9)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values('2023224','TETRIS', 'UN CLASICO DE ESTRATEGIA OCASIONAL, QUE NO SE ACUMULEN O PERDERAS',8)

insert into videojuegos (codigo,nombre,descripcion,valoracion)
values('2023214','HALO 2', 'LUCHA POR EL EJERCITO EN EL ESPACIO',7.5)

insert into videojuegos (codigo,nombre)
values('2022110','RED DEAD REDEPTION')

insert into videojuegos (codigo,nombre)
values('2012119','ANGRY BIRDS')

insert into videojuegos (codigo,nombre)
values('2016011','PONG')

-- transacciones

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (1, 'A0001', 500.00, 'C', '2024-03-01', '09:00:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (2, 'A0002', 1250.50, 'D', '2024-03-01', '10:15:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (3, 'A0003', 75.00, 'C', '2024-03-01', '11:30:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (4, 'A0001', 200.00, 'D', '2024-03-02', '08:45:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (5, 'A0005', 1000.00, 'C', '2024-03-02', '13:20:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (6, 'A0002', 450.25, 'C', '2024-03-03', '14:10:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (7, 'A0004', 300.00, 'D', '2024-03-03', '15:55:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (8, 'A0003', 150.00, 'C', '2024-03-04', '10:05:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (9, 'A0001', 80.00, 'D', '2024-03-04', '11:40:00');

INSERT INTO transacciones (codigo, numero_cuenta, monto, tipo, fecha, hora) 
VALUES (10, 'A0005', 2200.00, 'C', '2024-03-05', '16:30:00');