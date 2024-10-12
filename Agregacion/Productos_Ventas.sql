select * from productos prod, ventas ven
where prod.codigo=ven.codigo_producto

--1
select max(prod.precio) as precio_maximo from productos prod, ventas ven
where prod.codigo=ven.codigo_producto

--2
select sum(ven.cantidad) as cantidad_total_vendida from productos prod, ventas ven
where prod.codigo=ven.codigo_producto