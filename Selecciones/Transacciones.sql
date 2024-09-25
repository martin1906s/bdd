select * from transacciones where tipo='D'
select * from transacciones where monto between money(200) and money(2000)
select codigo, monto, tipo ,fecha from transacciones where fecha is not null