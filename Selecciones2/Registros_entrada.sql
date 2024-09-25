select * from registros_entrada 
where fecha between '1/09/2023' and '30/09/2023' 
or cedula_empleado like '17%'

select * from registros_entrada 
where fecha between '1/08/2023' and '30/08/2023' 
and cedula_empleado like '17%' 
and hora between '8:00' and '12:00'

select * from registros_entrada 
where (fecha between '1/08/2023' and '30/08/2023' 
and cedula_empleado like '17%' 
and hora between '8:00' and '12:00')
or (fecha between '1/09/2023' and '30/09/2023'
and cedula_empleado like '08%'
and hora between '9:00' and '13:00')