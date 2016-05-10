/* Script de creacion de una base de datos */

CREATE DATABASE vclase1 TEMPLATE template1;

/* Conectarse a la base de datos */

\c vclase1

/* Crear el esquema */

CREATE SCHEMA t;

/* Creacion de las tablas */

CREATE TABLE t.pieza (
			pnum int PRIMARY KEY,
			nombrep varchar(20) NOT NULL,
			colorp varchar(20) NOT NULL,
			pesop numeric(7,2) NOT NULL,
			ciudad_alm varchar(20) NOT NULL
);

CREATE TABLE t.precio (
			pnum int primary key,
			preciop numeric(7,2),
			preciop_sug numeric(7,2),
			foreign key (pnum) references t.pieza
);

CREATE TABLE t.cuentahabiente (
	ci int primary key,
	nombre varchar(20),
	direccion varchar(30),
	telefono varchar(20)
);

CREATE TABLE t.prestamo (
			numprestamo int primary key,
			ci int,
			nombresuc varchar(20),
			importe numeric(9,2),
			FOREIGN KEY (ci) REFERENCES t.cuentahabiente
				ON UPDATE CASCADE
				ON DELETE CASCADE
);

CREATE TABLE t.deposito (
			numdeposito int primary key,
			ci int,
			nombresuc varchar(20),
			saldo numeric(9,2),
			FOREIGN KEY (ci) REFERENCES t.cuentahabiente
				ON UPDATE CASCADE
				ON DELETE CASCADE
);


