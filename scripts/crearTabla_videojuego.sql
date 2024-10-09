-- crear tabla videojuegos
create table videojuegos(
codigo int not null,
nombre varchar(100) not null,
descripcion varchar(300),
valoracion int not null,
constraint videojuego_pk primary key(codigo)
)

create table plataformas(
	id_plataforma int,
	nombre_plataforma varchar(50)not null,
	codigo_videojuego int,
	constraint pataformas_pk primary key(id_plataforma)
)

alter table plataformas
add constraint videojuego_plataformas foreign key (codigo_videojuego)
references videojuegos(codigo)