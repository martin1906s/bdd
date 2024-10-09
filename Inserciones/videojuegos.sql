insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(001,'GTA5','Mafia',5);

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(002,'Dragon Ball','Pelea',3);

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(003,'Need For Speed','Carreras',5);

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(004,'Free Fire','Battalle Ground',2);

insert into videojuegos(codigo,nombre,descripcion,valoracion)
values(005,'Fornite','Battalla',1);

insert into videojuegos(codigo,nombre,valoracion)
values(007,'Clash Royale',4);
insert into videojuegos(codigo,nombre,valoracion)
values(008,'Fall Guys',1);
insert into videojuegos(codigo,nombre,valoracion)
values(010,'Dream League Soccer',5);


insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(07563, 'Call of Duty', 'juego de terror', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(85421, 'Free Fire', 'juego de accion', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(93475, 'Call of Clans', 'juego de terror', 10);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(15983, 'Fornite', 'juego de suspenso', 10);

insert into videojuegos(codigo, nombre, valoracion)
values(35784, 'Minecraft', 3);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(54682, 'Tom and Jerry', 'juego de comedia', 8);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(01456, 'Ajedres', 'juego de psicoligia', 6);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(70215, 'God of Ward', 'juego de aprendisaje', 7);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63240, 'Crash', 'juego de deprote', 9);

insert into videojuegos(codigo, nombre, descripcion, valoracion)
values(63549, 'Dragon Ball', 'juego de baile', 8);


-- Videojuegos cuya descripción contenga la palabra "Guerra"
INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion) VALUES
(11, 'Battlefield', 'Juego de guerra y estrategia', 9.0),
(20, 'Call of Duty', 'Guerra moderna y combate táctico', 8.5);

-- Videojuegos que empiezan con "C" o "D"
INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion) VALUES
(30, 'Cyberpunk 2077', 'Juego de rol y mundo abierto', 7.5),
(40, 'Doom Eternal', 'Disparos en primera persona', 9.2);

-- Videojuego con nombre "God of War"
INSERT INTO videojuegos (codigo, nombre, descripcion, valoracion) VALUES
(50, 'God of War 2', 'Mitología y combates épicos', 9.8);
select * from videojuegos