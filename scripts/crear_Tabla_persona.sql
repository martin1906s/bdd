CREATE TABLE persona(
    cedula CHAR(10) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    estatura DECIMAL(10,2),
    fecha_nacimiento DATE NOT NULL,
    hora_nacimiento TIME,
    cantidad_ahorrada MONEY,
    numero_hijos INT,
	CONSTRAINT persona_pk primary key(cedula)
)
CREATE TABLE prestamo (
    cedula CHAR(10),
    monto MONEY,
    fecha_prestamo DATE,
    hora_prestamo TIME,
    garante VARCHAR(40),
	CONSTRAINT cedulap_pk primary key (cedula)
)
    ALTER TABLE prestamo
	ADD CONSTRAINT persona_prestamo_fk FOREIGN KEY (cedula)
	REFERENCES persona (cedula)
