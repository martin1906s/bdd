-- crear tabla videojuegos
create table videojuegos(
codigo int not null,
nombre varchar(100) not null,
descripcion varchar(300),
valoracion int not null,
constraint videojuego_pk primary key(codigo)
)