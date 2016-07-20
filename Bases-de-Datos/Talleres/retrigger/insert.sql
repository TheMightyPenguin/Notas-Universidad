

DELETE FROM t.Secundaria;
DELETE FROM t.Principal;

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