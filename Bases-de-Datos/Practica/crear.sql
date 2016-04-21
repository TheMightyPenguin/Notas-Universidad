/* Script de creacion de una base de datos */
CREATE DATABASE vtortolero TEMPLATE template1;

/* Conectar a la base de datos */
\c vtortolero

/* Crear el esquema */
CREATE SCHEMA t;

/* Dominios definidos por el usuario */
CREATE DOMAIN t.tipo_cedula int
              CHECK (VALUE > 0);
CREATE DOMAIN t.tipo_nombre varchar(40);


/* Creacion de las tablas */
CREATE TABLE t.jinete (
	cedula t.tipo_cedula PRIMARY KEY,
	nombre t.tipo_nombre NOT NULL
);

CREATE TABLE t.caballo (
	ci_jinete t.tipo_cedula NOT NULL,
	nombre t.tipo_nombre NOT NULL,
	PRIMARY KEY (ci_jinete, nombre),
	FOREIGN KEY (ci_jinete) REFERENCES t.jinete
	                        ON UPDATE CASCADE
	                        ON DELETE CASCADE
);

CREATE TABLE t.padres_c (
	progenitor t.tipo_nombre NOT NULL,
	ci_jinete t.tipo_cedula NOT NULL,
	nombre_hijo t.tipo_nombre NOT NULL,
	PRIMARY KEY (progenitor, ci_jinete, nombre_hijo),
	FOREIGN KEY (ci_jinete, nombre_hijo) REFERENCES t.caballo
	                        ON UPDATE CASCADE
	                        ON DELETE CASCADE	
);
