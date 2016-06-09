create schema dulce;

create table dulce.fabricante(
           codigo int primary key,
           nombre varchar(20)
);

create table dulce.producto(
           codprod int primary key,
           tipo varchar(60),
           precio int,
           productor int references dulce.fabricante
);

insert into dulce.fabricante values (11,'Los Mejores');
insert into dulce.fabricante values (22,'Pesos Mayores');
insert into dulce.fabricante values (33,'Dulces por Miles');
insert into dulce.fabricante values (44,'Fat');
insert into dulce.fabricante values (55,'Lo Mas Dulce');
insert into dulce.fabricante values (66,'5 Pasteles');
insert into dulce.fabricante values (77,'Turron');
insert into dulce.fabricante values (88,'Todo en Chocolates');
insert into dulce.fabricante values (99,'Museo del Sabor');
insert into dulce.fabricante values (100,'Casa de las Tortas');
insert into dulce.fabricante values (110,'Los Antojos');
insert into dulce.producto values (200,'Chocolate',20,88);
insert into dulce.producto values (201,'Hojaldre',25,11);
insert into dulce.producto values (202,'Chocolate',18,88);
insert into dulce.producto values (203,'Chocolate',19,88);
insert into dulce.producto values (204,'Chocolate',26,88);
insert into dulce.producto values (205,'Turron Light',42,77);
insert into dulce.producto values (206,'Turron de Chocolate',68,77);
insert into dulce.producto values (207,'Tres Leches',22,22);
insert into dulce.producto values (208,'Tres Leches',24,33);
insert into dulce.producto values (209,'Tres Leches',21,110);
insert into dulce.producto values (210,'Tres Leches',20,44);
insert into dulce.producto values (211,'Arequipe',30,55);
insert into dulce.producto values (212,'Tres Leches',18,55);
insert into dulce.producto values (213,'Chocolate',31,88);
insert into dulce.producto values (214,'Golfeado',30,100);
insert into dulce.producto values (215,'Torta de Pina',80,100);
insert into dulce.producto values (216,'Chocolate',23,88);
insert into dulce.producto values (217,'Profiteroles',32,99);
insert into dulce.producto values (218,'Chocolate',26,55);
insert into dulce.producto values (219,'Torta de Chocolate',20,100);
insert into dulce.producto values (220,'Chocolate',15,88);
insert into dulce.producto values (221,'Cocada',17,22);
insert into dulce.producto values (222,'Galletas Chips',18,22);
insert into dulce.producto values (223,'Galletas Polvorosas',10,22);
insert into dulce.producto values (224,'Galletas de Fresa',11,22);
insert into dulce.producto values (225,'Palmeritas',13,22);
insert into dulce.producto values (226,'Dandis',9,22);
insert into dulce.producto values (227,'Bomba',10,22);
insert into dulce.producto values (228,'Dona',7,33);
insert into dulce.producto values (229,'Profiterol',5,33);
insert into dulce.producto values (230,'Rosquillas',12,33);
insert into dulce.producto values (231,'Ponque',3,33);
insert into dulce.producto values (232,'Torta de Platano',78,33);
insert into dulce.producto values (233,'Torta de Chocolate',99,33);
insert into dulce.producto values (234,'Bocadillos',5,33);
insert into dulce.producto values (235,'Pie de Limon',40,33);
insert into dulce.producto values (236,'Suspiros',11,44);
insert into dulce.producto values (237,'Galletas de Avena',20,44);
insert into dulce.producto values (238,'Golfeado',19,44);
insert into dulce.producto values (239,'Dandis',5,44);
insert into dulce.producto values (240,'Croissant de Chocolate',17,55);
insert into dulce.producto values (241,'Musse de Parchita',14,55);
insert into dulce.producto values (242,'Musse de Chocolate',24,55);
insert into dulce.producto values (243,'Quesillo',23,66);
insert into dulce.producto values (244,'Gelatina',22,66);
insert into dulce.producto values (245,'Dona',5,66);
insert into dulce.producto values (246,'Turron de Almendras',70,77);
insert into dulce.producto values (247,'Turron de Pasitas',72,77);
insert into dulce.producto values (248,'Torta de Arequipe',98,100);
insert into dulce.producto values (249,'Torta de Almendras',99,100);
insert into dulce.producto values (250,'Torta Helada de Fresa y Mantecado',120,100);
insert into dulce.producto values (251,'Torta Helada de Brownie',130,100);
insert into dulce.producto values (252,'Bienmesabe',19,99);
insert into dulce.producto values (253,'Arroz con Leche',20,99);
insert into dulce.producto values (254,'Quesillo',12,99);
insert into dulce.producto values (255,'Gelatina de Colores',9,99);
insert into dulce.producto values (256,'Dulce de Lechosa',17,110);
insert into dulce.producto values (257,'Delicia de Pina',21,110);
insert into dulce.producto values (258,'Brownie',18,110);
insert into dulce.producto values (259,'Gelatina',17,110);
insert into dulce.producto values (260,'Quesillo',17,110);
insert into dulce.producto values (261,'Arroz con Leche',17,110);
insert into dulce.producto values (262,'Bienmesabe',17,110);
insert into dulce.producto values (263,'Torta Helada de Brownie',17,110);
insert into dulce.producto values (264,'Torta Helada de Fresa y Mantecado',17,110);
insert into dulce.producto values (265,'Torta de Almendras',17,110);
insert into dulce.producto values (266,'Dona',17,110);
insert into dulce.producto values (267,'Musse de Chocolate',17,110);
insert into dulce.producto values (268,'Musse de Parchita',17,110);
insert into dulce.producto values (269,'Croissant de Chocolate',17,110);
insert into dulce.producto values (270,'Dandis',17,110);
insert into dulce.producto values (271,'Golfeado',17,110);
insert into dulce.producto values (272,'Galletas de Avena',17,110);
insert into dulce.producto values (273,'Suspiros',11,110);
insert into dulce.producto values (274,'Pie de Limon',40,110);
insert into dulce.producto values (275,'Bocadillos',5,110);
insert into dulce.producto values (276,'Torta de Chocolate',99,110);
insert into dulce.producto values (277,'Chocolate',20,110);
