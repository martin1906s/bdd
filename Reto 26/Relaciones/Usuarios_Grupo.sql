select * from usuarios us, grupo gr, usuario_grupo usgr
where us.id=usgr.us_id and gr.id = usgr.gr_id

--Consulta 1
select us.nombre,us.apellido,gr.nombre from usuarios us, grupo gr, usuario_grupo usgr
where us.id=usgr.us_id and gr.id = usgr.gr_id
-- Subconsulta 1
select nombre from usuarios
where id in (select us_id from usuario_grupo where gr_id=1)
-- Agregacion 1
select gr.nombre,count(usgr.us_id) from grupo gr, usuario_grupo usgr
where gr.id = usgr.gr_id
group by gr.nombre

--Consulta 2
select us.nombre,us.apellido,gr.nombre from usuarios us, grupo gr, usuario_grupo usgr
where us.id=usgr.us_id and gr.id = usgr.gr_id
and gr.nombre like '%intensivo%'
--Subconsulta 2
select us.nombre from usuarios us
where us.id in(select us_id from usuario_grupo where gr_id=2)
-- Agregacion 2
select gr.nombre,max(usgr.us_id),min(usgr.us_id) from grupo gr, usuario_grupo usgr
where gr.id = usgr.gr_id
group by gr.nombre

--Consulta 3
select us.nombre,us.apellido,gr.fecha_creacion from usuarios us, grupo gr, usuario_grupo usgr
where us.id=usgr.us_id and gr.id = usgr.gr_id
and gr.fecha_creacion between '2020-03-08' and '2022-03-08'
--Subconsulta 3
select us.nombre from usuarios us
where us.id in(select us_id from usuario_grupo where gr_id=3)
--Agregacion 3
select gr.descripcion,count(usgr.us_id) from grupo gr, usuario_grupo usgr
where gr.id = usgr.gr_id and gr.descripcion like '%matutino%'
group by gr.descripcion