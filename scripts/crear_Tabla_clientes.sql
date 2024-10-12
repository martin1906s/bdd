delete from clientes
alter table clientes
add column estado_civil_codigo char(1) not null
select * from clientes

CREATE TABLE clientes (
    cedula CHAR(10),
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    estado_civil_codigo CHAR(1) NOT NULL,
    CONSTRAINT clientes_pk PRIMARY KEY (cedula)
)
CREATE TABLE compras (
    id_compra INT,
    cedula CHAR(10) NOT NULL,
    fecha_compra DATE NOT NULL,
    monto DECIMAL(10, 2) NOT NULL,
    CONSTRAINT compras_pk primary key(id_compra)
)

ALTER TABLE compras
ADD CONSTRAINT compras_clientes_fk FOREIGN KEY (cedula)
REFERENCES clientes(cedula);





