delete from clientes
alter table clientes
add column estado_civil_codigo char(1) not null
select * from clientes

create table estado_civil(
	codigo char(1) not null,
	descripcion varchar(20) not null,
	constraint estado_civil_pk primary key (codigo)
)

alter table clientes
add constraint clientes_estado_civil_fk foreign key (estado_civil_codigo)
references estado_civil(codigo)

select * from estado_civil
insert into estado_civil(codigo,descripcion)
values('U','UNION LIBRE');
insert into estado_civil(codigo,descripcion)
values('C','CASADO');
insert into estado_civil(codigo,descripcion)
values('S','SOLTERO');

insert into clientes(cedula,nombre,apellido,estado_civil_codigo)
values ('1715614788','Alexandra','Flores','C')
insert into clientes(cedula,nombre,apellido,estado_civil_codigo)
values ('1715614789','Alexandra2','Flores2','S')