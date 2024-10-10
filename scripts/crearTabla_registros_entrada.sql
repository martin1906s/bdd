-- Crear tabla empleado
CREATE TABLE empleado (
    codigo_empleado INT NOT NULL,
    nombre VARCHAR(25) NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    CONSTRAINT empleado_pk PRIMARY KEY (codigo_empleado)
)

-- Crear tabla registros_entrada
CREATE TABLE registros_entrada (
    codigo_registro INT NOT NULL,
    cedula_empleado CHAR(10) NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    codigo_empleado INT NOT NULL,
    CONSTRAINT registros_entrada_pk PRIMARY KEY (codigo_registro),
    CONSTRAINT registros_entrada_empleado_fk FOREIGN KEY (codigo_empleado)
    REFERENCES empleado(codigo_empleado)
)

select * from
