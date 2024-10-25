--Elimina Tablas
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS historial_movimientos;
DROP TABLE IF EXISTS categorias;

--Creacion de tablas 
create table categorias(
	id char(4)not null,
	nombre varchar(50)not null,
	constraint categorias_pk primary key (id)
)
--insrts categorias
INSERT INTO categorias (id, nombre) 
VALUES('C001', 'Bebidas'),
('C002', 'Snacks'),
('C003', 'Golosinas');

create table productos(
	id char(5) not null,
	nombre varchar(50)not null,
	precio_venta money(10,2)not null,
	precio_compra money (10,2)not null,
	id_categoria char(4)not null,
	constraint productos_pk primary key(id)
)
alter table productos 
add constraint productos_categorias_FK foreign key (id_categoria)
references categorias(id);

--insert productos 
insert into productos(id,nombre,precio_venta,precio_compra,id_categoria)
values('P001', 'Coca cola 300 ml', 0.70, 0.55, 'C001'),
('P002', 'Coca cola 1000 ml', 1.00, 0.80, 'C001'),
('P003', 'Doritos 50g', 0.50, 0.42, 'C002'),
('P004', 'Manicho', 0.25, 0.21, 'C003'),
('P005', 'Tango', 0.50, 0.42, 'C003');


create table historial_movimientos(
	id int not null,
	id_producto char(4)not null,
	cantidad int not null,
	fecha_movimiento timestamp,
	constraint historial_movimientos_PK primary key (id)
)
alter table historial_movimientos
add constraint productos_historial_movimientos_FK foreign key(id_producto)
references productos(id);
--inserts movimientos
INSERT INTO historial_movimientos (id,id_producto, cantidad, fecha_movimiento) 
VALUES(1,'P001', 10, '2020-10-28 09:45'),
(2,'P002', -3, '2020-10-28 10:49'),
(3,'P001', 5, '2020-10-28 12:23');

--Seleccion de tablas
select * from productos
select *from historial_movimientos
select * from categorias