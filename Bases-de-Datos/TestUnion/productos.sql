create schema ut;

CREATE TABLE ut.categoria (
	codigo serial primary key,
	nombre varchar(30) NOT NULL
);

CREATE TABLE ut.producto (
	codigo serial primary key,
	nombre varchar(30) NOT NULL,
	categoria int NOT NULL,
	FOREIGN KEY(categoria) references ut.categoria
);

INSERT INTO ut.categoria (nombre) VALUES ('comestible');
INSERT INTO ut.categoria (nombre) VALUES ('electrodomestico');
INSERT INTO ut.categoria (nombre) VALUES ('componentes de pc');

INSERT INTO ut.producto (nombre, categoria) VALUES ('8GB RAM', 3);
INSERT INTO ut.producto (nombre, categoria) VALUES ('4GB RAM', 3);
INSERT INTO ut.producto (nombre, categoria) VALUES ('Pizza', 1);
INSERT INTO ut.producto (nombre, categoria) VALUES ('Nevera', 2);
