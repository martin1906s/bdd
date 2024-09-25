-- crear tabla registros entrada
create table registros_entrada(
	codigo_registro int not null,
	cedula_empleado char(10) not null,
	fecha date not null,
	hora time not null,
	constraint codigoRegistro_pk primary key(codigo_registro)
)