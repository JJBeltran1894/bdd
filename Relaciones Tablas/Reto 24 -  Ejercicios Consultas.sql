select * from
personas pe,estado_civil ec
where 
pe.estado_civil_codigo = ec.codigo

select pe.cedula,pe.nombre,pe.apellido,ec.descripcion from
personas pe,estado_civil ec
where 
pe.estado_civil_codigo = ec.codigo
and nombre like 'J%'
-- usuarios y cuentas

select cta.numero_cuenta,usr.nombre from 
cuentas cta,usuario usr
where usr.cedula = cta.cedula_propietario and
cta.saldo between '100' and '1000'

select * from 
cuentas cta,usuario usr
where cta.fecha_creacion between '2022-09-21' and '2023-09-21'
and  usr.cedula = cta.cedula_propietario

-- clientes y compras

select cl.nombre,cl.apellido from
clientes cl where cedula like '%7%'

select * from clientes where cedula = (
	select cedula from clientes where nombre = 'Monica'
)

-- estudiantes y profesores

select pr.codigo,est.nombre,est.apellido from
profesores pr,estudiantes est where
est.apellido like '%n%' and
est.codigo_profesor = pr.codigo

select * from estudiantes est,profesores pr where
est.codigo_profesor = (
	select codigo from profesores where nombre = 'Francisco'
) and est.codigo_profesor = pr.codigo

-- persona prestamo

select pe.cantidad_ahorrada,pt.monto,pt.garante from 
personas pe,prestamo pt
where pt.monto between '100' and '1000'
and pe.cedula = pt.cedula

select * from personas pe,prestamo pt where
pe.cedula = (
	select cedula from personas where nombre = 'Sean'
)and pe.cedula = pt.cedula

-- productos y ventas

select pd.nombre,pd.stock,vt.cantidad from
productos pd join ventas vt on
pd.codigo = vt.codigo_producto where pd.nombre like '%m%' or pd.descripcion = '0'

select pd.nombre,pd.stock from productos pd, ventas vt where
pd.codigo = (
	select ventas.codigo_producto from ventas where vt.cantidad =5
)

-- transacciones y banco
select * from banco 
select * from transacciones 
where tipo = 'C' 
and numero_cuenta between '22001' and '22004'

select * from transacciones 
where codigo = (
    select codigo_transaccion 
    from banco 
    where codigo_banco = 1
)

-- videojuegos y plataforma

select v.nombre, v.descripcion, v.valoracion, p.nombre_plataforma
from videojuegos v
join plataformas p on v.codigo = p.codigo_videojuego
where (v.descripcion like '%Guerra%' and v.valoracion > 7)
   or (v.nombre like 'C%' and v.valoracion > 8 and v.nombre like 'D%')

select * from plataformas 
where codigo_videojuego = (
    select codigo 
    from videojuegos 
    where nombre = 'God of war'
)

-- registros entrada y empleados

select re.cedula_empleado, re.fecha, e.nombre
from registros_entrada re
join empleado e on re.codigo_empleado = e.codigo_empleado
where (re.fecha between '2023-08-01' and '2023-08-31')
   or (re.cedula_empleado like '17%' and re.hora between '08:00' and '12:00')
   or (re.fecha between '2023-10-06' and '2023-10-20' 
       and re.cedula_empleado like '08%' 
       and re.hora between '09:00' and '13:00')

select * from empleado 
where codigo_empleado = (
    select codigo_empleado 
    from registros_entrada 
    where codigo_registro = (
        select codigo_registro 
        from registros_entrada 
        where cedula_empleado = '2201'
        limit 1
    )
)



