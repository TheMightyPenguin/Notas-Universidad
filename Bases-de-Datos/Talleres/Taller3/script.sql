/*
	Taller 3 SQL
	Victor Tortolero
	24569609
*/

/* Creando la bd */
CREATE DATABASE vtortolero_taller3 TEMPLATE template1;

\c vtortolero

/* Creando el esquema */
CREATE SCHEMA t3;

/* Tabla de productos */
CREATE TABLE t3.producto (
		codigo serial primary key,
		nombre varchar(60) NOT NULL,
		precio numeric(7,2)
);

/* Tabla de auditoria */
CREATE TABLE t3.auditoria (
		codprod int,
		stamp timestamp NOT NULL,
		accion varchar(30),
		nombre varchar(20) NOT NULL,
		precio numeric(7,2),
		PRIMARY KEY (codprod, stamp)
);

/*
	Este procedimiento registra en t3.auditoria los cambios hechos
	en la tabla t3.producto y la fecha y hora en la que fueron
	realizados.
*/
CREATE OR REPLACE FUNCTION auditoria_producto() RETURNS TRIGGER as $auditoria_producto$
BEGIN
	IF (TG_OP = 'INSERT') THEN
		INSERT INTO t3.auditoria SELECT NEW.codigo, now(), 'INSERT', NEW.nombre, NEW.precio;
		RETURN NEW;
	ELSIF (TG_OP = 'UPDATE') THEN
		INSERT INTO t3.auditoria SELECT OLD.codigo, now(), 'UPDATE', NEW.nombre, NEW.precio;
		RETURN NEW;
	ELSIF (TG_OP = 'DELETE') THEN
		INSERT INTO t3.auditoria SELECT OLD.codigo, now(), 'DELETE', OLD.nombre, OLD.precio;
		RETURN OLD;
	END IF;
	RETURN NULL;
END;
$auditoria_producto$ LANGUAGE plpgsql;

/*
	Creamos el trigger y le asignamos el procedimiento almacenado
	auditoria_producto()
*/
CREATE TRIGGER auditar_productos
AFTER UPDATE OR INSERT OR DELETE ON t3.producto
	FOR EACH ROW EXECUTE PROCEDURE auditoria_producto();

/* Insertando tuplas */
INSERT INTO t3.producto(nombre, precio) VALUES ('420 Cola', 420.00);
INSERT INTO t3.producto(nombre, precio) VALUES ('Pizza', 2000.50);
INSERT INTO t3.producto(nombre, precio) VALUES ('Gazorpazorfield', 1337.00);
INSERT INTO t3.producto(nombre, precio) VALUES ('Calculadora', 126.72);

UPDATE t3.producto
SET nombre = '720 Cola Cola'
WHERE codigo = 1;

UPDATE t3.producto
SET nombre = 'Gazorpazorfield 2', precio = 456.63
WHERE codigo = 3;

DELETE FROM t3.producto
WHERe codigo = 4;

/* Mostrar todos los productos */
SELECT * FROM t3.producto;

/* Mostrar las auditorias de los productos */
SELECT * FROM t3.auditoria;
