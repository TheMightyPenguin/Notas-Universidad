/*
	Se tiene dos tablas Principal y secundaria, en donde la tabla Primaria tiene un campo (campo clave) 
	y la secundaria tiene 2 campos (camp_cla y ref).

	El campo ref de la segunda tabla es opcional, pero en el caso de que sea diferente a nulo, el valor
	almacenado tiene que hacer referencia a un valor valido de la tabla Primaria. Y en el caso de la tabla
	Primaria, no se puede actualizar o eliminar registro al cual se esté siendo reflejado desde la tabla
	secundaria.
*/


CREATE DATABASE eagtrigger TEMPLATE template1;

\c eagtrigger

CREATE SCHEMA t;
CREATE TABLE t.Principal(
	campo_clave int PRIMARY KEY
); 


CREATE TABLE t.Secundaria(
	camp_cla int PRIMARY KEY,
	ref int 
); 

--Creacion de los Procedimientos almacenados
CREATE OR REPLACE FUNCTION FIRS() RETURNS trigger AS $$
BEGIN
	IF(NOT EXISTS(	SELECT * 
					FROM t.Principal AS P 
					WHERE P.campo_clave = New.ref) AND New.ref IS NOT NULL) THEN

		RAISE EXCEPTION 'Estas intentado insertar o modificar una Ref que no pertenece a la tabla Principal ';
		RETURN OLD;
	END IF;

	RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION FIRP() RETURNS trigger AS $$
BEGIN
	IF(EXISTS(	SELECT * 
				FROM t.Secundaria AS S 
				WHERE S.ref = OLD.campo_clave)) THEN
		RAISE EXCEPTION 'Estas intentado Eliminar o modificar una fila de la tabla Principal la cual está siendo referenciada por la tabla Secundaria ERROOOOR';
	END IF;

	IF(TG_OP ='DELETE')THEN
		RETURN OLD;
	ELSE
		RETURN NEW;
	END IF;
END;
$$ LANGUAGE plpgsql;



--Creacion de los Triggers
CREATE TRIGGER Integridad_Referencia
BEFORE UPDATE OR INSERT ON t.Secundaria
	FOR EACH ROW EXECUTE PROCEDURE FIRS();

CREATE TRIGGER Integridad_Referencia
BEFORE DELETE OR UPDATE ON t.Principal
	FOR EACH ROW EXECUTE PROCEDURE FIRP();


--Inserccion de datos

INSERT INTO t.Principal VALUES (1);
INSERT INTO t.Principal VALUES (3);
INSERT INTO t.Principal VALUES (2);

INSERT INTO t.Secundaria VALUES(1,4); --Este deberia arrojar error porque el 4 no existe en la tabla Principal
INSERT INTO t.Secundaria VALUES(1,2); 
INSERT INTO t.Secundaria VALUES(4,null);
INSERT INTO t.Secundaria VALUES(5,null);


--Deberia dar error porque se quiere actualizar el 
--campo ref a una valor que no tiene correspondencia
--en la tabla principal
UPDATE t.Secundaria
SET ref = 20
WHERE camp_cla = 1;

--Debe dar error porque se quiere actualizar
--un campo al cual se le hace referenacia
UPDATE t.Principal
set campo_clave =4
WHERE campo_clave = 2;

--No debe dar error
UPDATE t.Principal
set campo_clave =4
WHERE campo_clave = 1;

--Debe dar error porque se quiere borrar
--un campo al cual se está haciendo referencia
DELETE FROM t.Principal 
WHERE campo_clave = 2;


--No debe dar error
DELETE FROM t.Principal 
WHERE campo_clave = 3;

\c postgres

DROP DATABASE eagtrigger;