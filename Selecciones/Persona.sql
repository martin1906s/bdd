-- reto 24 --
select * from persona
select * from prestamo
select * from persona per, prestamo pres

select per.cantidad_ahorrada, pre.monto, pre.garante  from persona per, prestamo pre 
where per.cedula=pre.cedula and pre.monto between money(100) and money(1000)

select per.* from persona per, prestamo pre
where per.cedula=pre.cedula
and per.nombre='Sean'