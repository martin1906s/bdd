select * from transacciones where tipo='D'
select * from transacciones where monto between money(200) and money(2000)
select codigo, monto, tipo ,fecha from transacciones where fecha is not null

--reto 24
select * from transacciones
select * from banco

SELECT * 
FROM transacciones
WHERE tipo = 'C'
AND numero_cuenta BETWEEN '22001' AND '22004';

SELECT * 
FROM transacciones
WHERE codigo = (SELECT codigo_transaccion 
                FROM banco 
                WHERE codigo_banco = 1);



