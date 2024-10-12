select * from habitaciones hab,huespedes hues,reservas res 
where hab.habitacion_numero=res.habitacion and hues.id=res.huesped_id

--Consulta 1
select hab.habitacion_numero,hues.nombres, hues.apellidos from habitaciones hab,huespedes hues,reservas res 
where hab.habitacion_numero=res.habitacion and hues.id=res.huesped_id
--Subconsulta 1
select nombres,apellidos from huespedes hues
where hues.id in(select huesped_id from reservas where habitacion=2)
--Agregacion 1
select hab.habitacion_numero,count(res.huesped_id) from habitaciones hab,reservas res 
where hab.habitacion_numero=res.habitacion
group by hab.habitacion_numero

-- Consulta 2
select hab.habitacion_numero, hab.piso, hues.nombres,hues.apellidos from habitaciones hab,huespedes hues,reservas res 
where hab.habitacion_numero=res.habitacion and hues.id=res.huesped_id
and hab.piso=4
--Subconsulta 2
select nombres,apellidos from huespedes hues
where hues.id in(select huesped_id from reservas where habitacion=3)
--Agregacion 2
select hab.habitacion_numero,avg(res.huesped_id) from habitaciones hab,reservas res 
where hab.habitacion_numero=res.habitacion
group by hab.habitacion_numero

--Consulta 3
select hab.habitacion_numero,hues.nombres, hues.apellidos from habitaciones hab,huespedes hues,reservas res 
where hab.habitacion_numero=res.habitacion and hues.id=res.huesped_id
--Subconsulta 3
select nombres,apellidos from huespedes hues
where hues.id in(select huesped_id from reservas where habitacion=4)
--Agregacion 3
select hab.habitacion_numero,sum(hab.precio_por_noche) from habitaciones hab,reservas res 
where hab.habitacion_numero=res.habitacion
group by hab.habitacion_numero