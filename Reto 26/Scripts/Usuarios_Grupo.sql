create table usuarios(
	id int not null,
	nombre varchar(25) not null,
	apellido varchar(25) not null,
	fecha_nacimiento date,
	constraint usuarios_pk primary key (id)	
)
create table grupo (
	id int not null,
	nombre varchar(25) not null,
	descripcion varchar(75),
	fecha_creacion date,
	constraint grupo_pk primary key (id)
)
create table usuario_grupo(
	us_id int not null,
	gr_id int not null,
	constraint usuario_fk foreign key (us_id) references usuarios(id),
	constraint grupo_fk foreign key (gr_id) references grupo(id),
	constraint usuarios_grupo_pk primary key (us_id,gr_id)
)

select * from usuario_grupo