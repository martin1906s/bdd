-- Count cuenta el numero de registros
select count (per.cedula) from persona per

-- Avg calcula el promedio de una columna especifica
-- cast hace una conversion para poder sacar el promedio
select avg(cast(cantidad_ahorrada as numeric)) from persona per, prestamo pres
where per.cedula = pres.cedula
and per.nombre = 'Sean'

--SUM suma una columna
select sum(cast(cantidad_ahorrada as numeric)) from persona per, prestamo pres
where per.cedula = pres.cedula
and per.nombre = 'Sean'

-- MIN saca el minimo de una columna
select min(cast(cantidad_ahorrada as numeric)) from persona per, prestamo pres
where per.cedula = pres.cedula
and per.nombre = 'Sean'

-- MAx saca el maximo de una columna 
select max(cast(cantidad_ahorrada as numeric)) from persona per, prestamo pres
where per.cedula = pres.cedula
and per.nombre = 'Sean'

-- GROUP BY agrupa una columna especifica
select nombre,sum(cast(cantidad_ahorrada as numeric)) from persona
group by persona.cedula