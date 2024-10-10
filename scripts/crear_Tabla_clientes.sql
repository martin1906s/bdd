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


