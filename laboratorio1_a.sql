/* Script de creacion de una base de datos */
CREATE DATABASE vtortolero TEMPLATE template1;

/* Conectar a la base de datos */
\c vtortolero

/* Crear el esquema */
CREATE SCHEMA t;

/* Dominios definidos por el usuario */
CREATE DOMAIN t.tipo_nombres varchar(60);
CREATE DOMAIN t.tipo_serial int NOT NULL;
CREATE DOMAIN t.tipo_precio numeric(8,2)
              CHECK (VALUE >= 2000.00);
CREATE DOMAIN t.tipo_mantenimiento char(12)
              CHECK (VALUE IN ('preventivo', 'correctivo'));
CREATE DOMAIN t.descripcion varchar(80);
CREATE DOMAIN t.tipo_marca varchar(60)
              DEFAULT 'Ferrari';
CREATE DOMAIN t.tipo_fecha date
              CHECK (VALUE >= '2016-01-01');


/* Creacion de las tablas */

CREATE TABLE t.vehiculo (
	placa t.tipo_serial PRIMARY KEY,
	marca t.tipo_marca NOT NULL,
	conductor t.tipo_nombres,
	fecha_compra date NOT NULL,
	costo t.tipo_precio
);

CREATE TABLE t.taller (
	numero t.tipo_serial PRIMARY KEY,
	encargado t.tipo_nombres NOT NULL,
	num_trabajadores int 
	                 CHECK (num_trabajadores > 0),
	presupuesto t.tipo_precio
);

CREATE TABLE t.revision (
	clave_vehiculo t.tipo_serial,
	clave_taller t.tipo_serial,
	fecha_entrada t.tipo_fecha,
	mecanico t.tipo_nombres NOT NULL,
	causa t.descripcion,
	mantenimiento t.tipo_mantenimiento,
	precio t.tipo_precio,
	PRIMARY KEY (clave_vehiculo, clave_taller, fecha_entrada),
	FOREIGN KEY (clave_vehiculo) REFERENCES t.vehiculo
	                             ON UPDATE CASCADE
	                             ON DELETE CASCADE,
	FOREIGN KEY (clave_taller) REFERENCES t.taller
	                           ON UPDATE CASCADE
	                           ON DELETE CASCADE
);
