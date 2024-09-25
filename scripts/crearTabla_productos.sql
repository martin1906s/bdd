-- crear tabla productos
create table productos(
	codigo int not null,
	nombre varchar(50) not null,
	descripcion varchar(50),
	precio money not null,
	stock int not null
	constraint productos_pk primary key(codigo)

)