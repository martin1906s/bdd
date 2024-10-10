select * from videojuegos where nombre like 'C%'
select * from videojuegos where valoracion between 9 and 10
select * from videojuegos where descripcion is null

--reto 24
select * from videojuegos
select* from plataformas
select * from videojuegos vid, plataformas plat 
where (vid.descripcion like'Guerra%' and vid.valoracion >=7) 
or(vid.nombre like 'C%' and vid.valoracion>8 or vid.nombre like 'D%')

SELECT * 
FROM plataformas
WHERE codigo_videojuego = (SELECT codigo FROM videojuegos WHERE nombre = 'God of War');

