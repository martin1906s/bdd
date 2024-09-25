select nombre, apellido from estudiantes where nombre like 'M%' or apellido like '%z'
select nombre from estudiantes where cedula like '18%' and cedula like '%32%'
select nombre,apellido from estudiantes where cedula like '17%' or cedula like '%06'