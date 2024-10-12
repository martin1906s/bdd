select * from videojuegos vid, plataformas plat
where vid.codigo=plat.codigo_videojuego

--1
select plat.codigo_videojuego, count(*) from videojuegos vid, plataformas plat
where vid.codigo=plat.codigo_videojuego
group by plat.codigo_videojuego

--2
select round(avg(vid.valoracion),2) as valoracion_promedio from videojuegos vid, plataformas plat
where vid.codigo=plat.codigo_videojuego