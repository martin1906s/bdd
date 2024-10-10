-- reto 24 --
select cl.nombre, cl.apellido from clientes cl 
where cl.cedula like '%7%'

select * from clientes
where cedula = (select cedula from clientes where nombre = 'Monica');
