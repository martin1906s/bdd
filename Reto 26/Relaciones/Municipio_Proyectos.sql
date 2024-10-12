select * from municipio mun, proyecto pro, proyecto_municipio promun
where mun.id=promun.municipio_id and pro.id=promun.proyecto_id

--Consulta 1
select mun.nombre,pro.proyecto from municipio mun, proyecto pro, proyecto_municipio promun
where mun.id=promun.municipio_id and pro.id=promun.proyecto_id
--Subconsulta 1
select proyecto from proyecto pro
where pro.id in(select proyecto_id from proyecto_municipio where municipio_id=1)
--Agregacion 1
select mun.nombre, count(promun.proyecto_id) from municipio mun, proyecto_municipio promun
where mun.id=promun.municipio_id 
group by mun.nombre

--Consulta 2
select mun.nombre,pro.proyecto from municipio mun, proyecto pro, proyecto_municipio promun
where mun.id=promun.municipio_id and pro.id=promun.proyecto_id
and mun.nombre like '%GAD%'
--Agregacion 2
select mun.nombre, min(promun.proyecto_id) from municipio mun, proyecto_municipio promun
where mun.id=promun.municipio_id 
group by mun.nombre

--Consulta 3
select mun.nombre,ciu.nombre from municipio mun, ciudad ciu
where mun.id=ciu.id
--Subconsulta 3
select proyecto from proyecto pro
where pro.id in(select proyecto_id from proyecto_municipio where municipio_id=3)
--Agregacion 3
select mun.nombre, max(promun.proyecto_id) from municipio mun, proyecto_municipio promun
where mun.id=promun.municipio_id 
group by mun.nombre