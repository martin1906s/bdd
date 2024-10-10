select * from productos where nombre like 'Q%'
select * from productos where descripcion is null
select * from productos where precio between money(2) and money(3)

--reto 24 --
select * from productos prod, ventas ven
where prod.nombre like '%m%'
or prod.descripcion is null

select prod.nombre, prod.stock from productos prod, ventas ven
where prod.codigo = ven.codigo_producto
and (ven.codigo_producto =(select ven.codigo_producto from ventas ven where ven.cantidad = 5))

