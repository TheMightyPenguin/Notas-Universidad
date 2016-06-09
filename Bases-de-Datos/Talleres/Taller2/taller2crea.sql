create schema dm;

create table dm.estacion (
	codigo_estacion int not null, 
	ciudad char(15) not null, 
	longitud int not null, 
	latitud int not null, 
	elevacion int not null,
	primary key(codigo_estacion)
);

create table dm.temperatura(
	fecha date not null, 
	temp_minima float not null,
	temp_maxima float not null,
	codigo_estacion int not null,
	primary key (fecha, codigo_estacion)
);

create table dm.pronostico(
	fecha_pronostico date not null,
	nubosidad int not null,
	presion float not null,
	temperatura float not null,
	direccion_viento char(5) not null,
	velocidad_viento int not null,
	codigo_estacion int not null,
	primary key(fecha_pronostico)
);

alter table dm.temperatura add foreign key(codigo_estacion) references dm.estacion(codigo_estacion) on delete cascade;
alter table dm.pronostico add foreign key(codigo_estacion) references dm.estacion(codigo_estacion) on delete cascade;

INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80479,'Palmichal','11','32','48');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80439,'Isla Aves','42','47','48');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80460,'La Orchila','13','50','48');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80472,'Barcelona','33','33','48');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80456,'Cumana','20','23','48');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80490,'Porlamar','22','16','11');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80424,'Guiria','12','24','34');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80476,'Maturin','16','11','26');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80425,'Temblador','39','22','31');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80478,'Puerto Cabello','29','15','19');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80428,'Maracay','41','23','31');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80482,'Maiquetia','30','35','27');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80408,'La Carlota','30','32','26');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80491,'Valencia','44','33','28');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80437,'Punto Fijo','21','43','28');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80453,'Coro','46','46','42');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80441,'Barquisimeto','30','17','50');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80493,'Acarigua','22','41','48');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80470,'Guanare','44','32','23');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80431,'Maracaibo','36','18','30');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80409,'Calabozo','33','35','30');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80457,'Valera','40','31','25');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80474,'El Vigia','14','40','27');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80404,'Merida','42','21','37');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80412,'San Antonio','42','19','48');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80429,'Santo Domingo','46','46','15');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80419,'Carrizal','33','10','37');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80495,'San Fernando','34','45','48');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80405,'Barinas','16','38','34');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80484,'Ciudad Bolivar','27','35','27');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80584,'Piritu','26','30','20');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80684,'Piritu','24','31','21');
INSERT INTO dm.estacion (codigo_estacion,ciudad,longitud,latitud,elevacion) VALUES (80784,'Piritu','19','29','19');

INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2015-02-16',15.56,20.15,80404);/*merida*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2016-04-02',10.52,12.51,80404);/*merida*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2016-01-16',24.86,30.58,80457);/*valera*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2015-03-02',12.56,17.14,80429);/*santo domingo*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2014-09-14',21.32,28.46,80482);/*maiquetia*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2013-12-06',22.89,32.53,80482);/*maiquetia*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2014-12-15',21.58,24.86,80408);/*la carlota*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2014-06-01',34.73,36.89,80409);/*calabozo*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2015-11-26',26.24,31.31,80405);/*barinas*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2013-12-24',24.33,27.52,80493);/*acarigua*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2015-10-23',35.21,44.85,80409);/*calabozo*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2014-10-04',35.84,40.95,80431);/*maracaibo*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2015-08-03',16.32,17.45,80404);/*merida*/

INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2016-03-20',38.54,42.61,80484);/*ciudad bolivar*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2016-03-20',38.54,42.61,80429);/*santo domingo*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2016-03-20',38.54,42.61,80495);/*san fernando*/

INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2013-11-27',39.32,44.45,80409);/*calabozo*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2013-11-23',24.21,32.52,80491);/*valencia*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2016-04-25',14.56,22.86,80412);/*san antonio*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2015-09-17',25.23,33.24,80437);/*punto fijo*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2015-11-24',31.45,35.24,80431);/*maracaibo*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2014-06-07',21.78,29.48,80493);/*acarigua*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2014-05-31',31.31,39.42,80453);/*coro*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2014-08-02',11.23,20.45,80404);/*merida*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2013-09-12',23.52,28.89,80457);/*valera*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2015-07-04',35.56,49.43,80431);/*maracibo*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2015-04-27',23.76,28.55,80428);/*maracay*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2015-03-03',39.89,43.34,80431);/*maracaibo*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2016-03-06',36.46,36.85,80441);/*barquisimeto*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2016-03-26',26.75,32.82,80409);/*calabozo*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2014-03-21',12.46,23.75,80429);/*santo domingo*/
INSERT INTO dm.temperatura (fecha,temp_minima,temp_maxima,codigo_estacion) VALUES ('2016-01-26',18.44,23.66,80491);/*valencia*/

INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2014-05-15',5,1005.1,31.31,'NW',7,80405);/*BARINAS TEMP-MAX*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2013-11-17',1,1006.5,28.89,'SW',8,80457);/*VALERA TEMP-MAX*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2016-05-13',4,1014.2,24.86,'SE',6,80408);/*LA CARLOTA TEMP-MAX*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2014-09-25',4,1004.7,11.23,'NE',7,80491);/*MERIDA TEMP-MIN*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2014-06-16',8,1003.6,18.44,'W',4,80491);/* VALENCIA TEMP-MIN*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2014-07-24',3,1000.6,44.85,'E',3,80409);/*CALABOZO TEMP-MAX*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2014-07-03',8,1002.4,27.52,'SW',16,80493);/*ACARIGUA TEMP-MAX*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2014-10-24',7,1009.5,42061,'CALMA',12,80484);/*CIUDAD BOLIVAR TEMP-MAX*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2014-01-06',8,1001.6,12.46,'NW',9,80429);/*SANTO DOMINGO TEMP-MIN*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2016-04-02',5,1014.4,25.23,'SW',8,80437);/*PUNTO FIJO TEMP-MIN*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2015-09-20',7,1012.3,21.78,'W',4,80493);/*ACARIGUA TEMP-MIN*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2015-04-25',1,1012.8,26.24,'N',3,80405);/*BARINAS TEMP-MIN*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2016-01-02',8,1015.5,24.86,'CALMA',7,80457);/*VALERA TEMP-MIN*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2014-01-19',8,1008.8,21.68,'NW',4,80408);/*LA CARLOTA TEMP-MIN*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2014-12-20',6,1009.7,20.45,'CALMA',15,80404);/*MERIDA TEMP-MAX*/

INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2016-06-12',2,1009.9,27.66,'S',13,80491);/*VALENCIA TEMP-MAX*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2016-06-13',2,1007.9,28.66,'S',13,80491);/*VALENCIA TEMP-MAX*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2016-06-14',2,1003.9,29.78,'S',13,80491);/*VALENCIA TEMP-MAX*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2016-06-15',2,1004.9,27.15,'S',13,80491);/*VALENCIA TEMP-MAX*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2016-06-16',2,900.9,29.66,'S',13,80491);/*VALENCIA TEMP-MAX*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2016-06-07',2,999.9,30.66,'S',13,80491);/*VALENCIA TEMP-MAX*/

INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2015-05-10',3,1001.8,26.75,'E',17,80409);/*CALABOZO TEMP-MIN*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2014-12-16',8,1007.4,21.78,'N',12,80493);/*ACARIGUA TEMP-MIN*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2015-01-26',3,1003.8,38.54,'SW',8,80484);/*CIUDAD BOLIVAR TEMP-MIN*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2014-05-30',8,1010.6,17.14,'W',4,80429);/*SANTO DOMINGO TEMP-MAX*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2014-09-26',6,1002.2,33.24,'ENE',14,80437);/*PUNTO FIJO TEMP-MAX*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2015-06-09',6,1002.7,22.89,'NE',6,80482);/*maiquetia TEMP-MIN*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2015-08-14',6,1015.5,40.95,'SW',11,80431);/*maracaibo TEMP MAX*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2014-03-11',2,1013.3,32.53,'SE',10,80482);/*maiquetia TEMP-MAX*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2014-08-04',8,1003.1,28.55,'WNW',6,80428);/*maracay TEMP-MAX*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2014-06-18',6,1005.7,35.84,'NW',4,80431);/*MARACAIBO TEMP-MIN*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2014-08-11',5,1010.4,31.31,'S',7,80453);/*CORO TEMP-MIN*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2015-01-18',3,1011.9,22.86,'CALMA',8,80412);/*SAN ANTONIO TEMP-MAX*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2015-09-14',8,1011.7,39.42,'N',9,80453);/*CORO TEMP-MAX*/
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) VALUES ('2014-05-26',8,1001.5,23.76,'W',5,80428);/*MARACAY TEMP-MIN*/
