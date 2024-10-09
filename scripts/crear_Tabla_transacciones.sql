CREATE TABLE transacciones (
    codigo int NOT NULL,
    numero_cuenta CHAR(5) NOT NULL,
    monto MONEY NOT NULL,
    tipo CHAR(1) NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
	constraint transacciones_pk primary key(codigo)
)

create table banco(
	codigo_banco int,
	codigo_transaccion int,
	detalle varchar(100),
	constraint banco_pk primary key(codigo_banco)
)

alter table banco
add constraint banco_transacciones_fk foreign key(codigo_transaccion)
references transacciones(codigo)