select * from transacciones
update transacciones set tipo='T' where monto between money(101) and money(499) and fecha between '01/09/2024' and '30/09/2024' and hora between '14:00' and '20:00'