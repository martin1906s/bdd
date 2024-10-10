select numero_cuenta,saldo from cuentas 
select * from cuentas where fecha_creacion between '25/07/2024'and '25/09/2024'
select numero_cuenta,saldo from cuentas where fecha_creacion between '25/07/2024'and '25/09/2024'

-- Reto 24 --
select cu.numero_cuenta,us.nombre from usuario us, cuentas cu 
where us.cedula=cu.cedula_propietario 
and cu.saldo between money(100) and money(1000)

select cu.* from usuario us, cuentas cu 
where us.cedula=cu.cedula_propietario
and cu.fecha_creacion between '2022-09-21' and '2023-09-21'