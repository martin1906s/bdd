select *from persona per, prestamo pres
where per.cedula= pres.cedula

--1
select per.cedula,sum(pres.monto) as monto_total_prestamos from persona per, prestamo pres
where per.cedula= pres.cedula
group by per.cedula

--2
select count(per.cedula) as total_personas from persona per, prestamo pres
where per.cedula= pres.cedula and per.numero_hijos>0