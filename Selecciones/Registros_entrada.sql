select cedula_empleado,fecha,hora from registros_entrada
select * from registros_entrada where hora between '7:00' and '14:00'
select * from registros_entrada where hora>'8:00'


-- Reto 24 --
select re.cedula_empleado, em.nombre from registros_entrada re, empleado em 
where re.codigo_empleado=em.codigo_empleado and(re.fecha between '2023-08-01' and '2023-08-31' 
or re.cedula_empleado like '17%' and re.hora between '08:00' and '12:00') 
or (re.fecha between '2023-10-06' and '2023-10-20' 
or re.cedula_empleado like '08%' and re.hora between '09:00' and '13:00') 