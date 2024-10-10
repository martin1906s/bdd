select nombre,cedula from estudiantes
select nombre,apellido from estudiantes where cedula like '17%'
select nombre,apellido from estudiantes where nombre like 'A%'

-- reto 24 --
delete from estudiantes where codigo_profesor is null

select * from estudiantes
select * from profesores

select pr.codigo, es.nombre, es.apellido from estudiantes es, profesores pr 
where es.apellido like '%n%'

select * from estudiantes es, profesores pr 
where pr.codigo =(select codigo from profesores pr where pr.nombre='Francisco') 
and pr.codigo=es.codigo_profesor