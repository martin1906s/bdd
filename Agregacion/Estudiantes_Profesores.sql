select * from estudiantes es, profesores prof
where es.codigo_profesor=prof.codigo

--1
select es.codigo_profesor,count(*) from estudiantes es, profesores prof
where es.codigo_profesor=prof.codigo
group by es.codigo_profesor

--2
SELECT ROUND(AVG(EXTRACT(YEAR FROM CURRENT_DATE) - EXTRACT(YEAR FROM es.fecha_nacimineto))) AS edad_promedio
FROM estudiantes es, profesores prof
WHERE es.codigo_profesor = prof.codigo

