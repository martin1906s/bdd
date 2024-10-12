select * from registros_entrada re, empleado em
where re.codigo_empleado=em.codigo_empleado

--1
select re.cedula_empleado, count(*) from registros_entrada re, empleado em
where re.codigo_empleado=em.codigo_empleado
group by re.cedula_empleado

--2 
select min(re.fecha)as fecha_minima, max(re.fecha)as fecha_maxima from registros_entrada re, empleado em
where re.codigo_empleado=em.codigo_empleado
