select * from cuentas cuen, usuario us
where cuen.cedula_propietario=us.cedula


--1
select avg(cast(cuen.saldo as numeric)) from cuentas cuen, usuario us
where cuen.cedula_propietario = '12345'

--2
select us.tipo_cuenta,count(*) from cuentas cuen, usuario us
where cuen.cedula_propietario=us.cedula
group by(tipo_cuenta)

