select * from transacciones tran, banco ban
where tran.codigo=ban.codigo_transaccion

--1
select count(*) as total_transacciones_credito from transacciones tran, banco ban
where tran.codigo=ban.codigo_transaccion and tran.tipo='C'

--2
select tran.numero_cuenta,round(avg(cast (tran.monto as decimal)),2)as monto_promedio from transacciones tran, banco ban
where tran.codigo=ban.codigo_transaccion
group by tran.numero_cuenta