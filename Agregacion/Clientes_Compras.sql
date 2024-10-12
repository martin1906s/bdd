select * from clientes cli
select * from clientes cli, compras com
select * from compras com

--1
select cli.cedula,sum(com.monto) from clientes cli, compras com
where cli.cedula=com.cedula
group by cli.cedula

--2
SELECT com.fecha_compra, COUNT(com.cedula) AS total_compras
FROM clientes cli, compras com
WHERE cli.cedula = com.cedula 
AND com.fecha_compra = '2023-09-05'
GROUP BY com.fecha_compra;
