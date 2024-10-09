-- Inserciones en la tabla persona
INSERT INTO persona (cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos) VALUES
('1234567890', 'Sean', 'Connery', 1.80, '1930-08-25', '08:30', 500.00, 2),
('2345678901', 'John', 'Doe', 1.75, '1990-05-15', '09:00', 150.00, 1),
('3456789012', 'Sean', 'Murray', 1.82, '1975-10-21', '07:45', 750.00, 0),
('4567890123', 'Jane', 'Smith', 1.68, '1985-12-12', '10:15', 300.00, 3),
('5678901234', 'Sean', 'White', 1.90, '1980-01-01', '06:00', 1200.00, 4),
('6789012345', 'Alice', 'Johnson', 1.70, '1995-11-02', '14:20', 600.00, 2),
('7890123456', 'Sean', 'Connor', 1.78, '1982-06-30', '16:00', 800.00, 1),
('8901234567', 'Bob', 'Brown', 1.85, '1978-04-18', '18:00', 200.00, 2),
('9012345678', 'Sean', 'Parker', 1.76, '1993-09-09', '12:30', 100.00, 0),
('0123456789', 'Emily', 'Davis', 1.65, '2000-02-28', '15:45', 250.00, 1);

-- Inserciones en la tabla prestamo
INSERT INTO prestamo (cedula, monto, fecha_prestamo, hora_prestamo, garante) VALUES
('1234567890', 150.00, '2023-01-15', '10:00', 'Alice Johnson'),
('2345678901', 500.00, '2023-05-20', '11:30', 'John Doe'),
('3456789012', 750.00, '2023-03-10', '14:15', 'Sean Murray'),
('4567890123', 300.00, '2023-07-18', '09:45', 'Jane Smith'),
('5678901234', 1200.00, '2023-08-12', '16:30', 'Sean White'),
('6789012345', 600.00, '2023-09-05', '08:00', 'Alice Johnson'),
('7890123456', 200.00, '2023-06-22', '19:00', 'Sean Connor'),
('8901234567', 350.00, '2023-04-28', '13:00', 'Bob Brown'),
('9012345678', 450.00, '2023-02-14', '17:00', 'Emily Davis'),
('0123456789', 900.00, '2023-10-01', '20:00', 'Sean Parker');

select * from persona
select * from prestamo