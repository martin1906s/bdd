select numero_cuenta, saldo from cuentas where saldo>money(100)and saldo<money(1000)
select * from cuentas where fecha_creacion between '25/09/2023' and '25/09/2024'
select * from cuentas where saldo=money(0)or cedula_propietario like '%2'