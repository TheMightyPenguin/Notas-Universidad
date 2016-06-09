/*
SELECT * FROM m.huracan;
SELECT * FROM m.tifon;
SELECT * FROM m.ocurrio;
*/

/*
SELECT COUNT(*) as huracanes
FROM m.huracan;
*/

/*
SELECT COUNT(*) as tifones
FROM m.tifon;
*/

/*
SELECT COUNT(*) as lugares
FROM m.lugar;
*/

/*
SELECT COUNT(*) as ocurrencias
FROM m.ocurrio;
*/


/* Producto Cartesiano */
/*
SELECT *
FROM m.huracan, m.tifon;
*/


/*
(SELECT *
FROM m.huracan)
UNION
(SELECT *
FROM m.tifon);
*/


/* Diferencia */
/*
(SELECT *
FROM m.huracan)
EXCEPT
(SELECT *
FROM m.tifon);

(SELECT *
FROM m.tifon)
EXCEPT
(SELECT *
FROM m.huracan);
*/

/*
(SELECT *
FROM m.huracan)
INTERSECT
(SELECT *
FROM m.tifon);
*/


/* Join Implicito */
/*
SELECT *
FROM m.huracan h, m.tifon t
WHERE h.codigo = t.cod;
*/


/* Join Explicito */
/*
SELECT *
FROM m.huracan h INNER JOIN m.tifon t
ON (h.codigo = t.cod);
*/

/* Left Join*/
/*
Trae toda la informacion de la tabla de la izquierda
y de la de la derecha solo la informacion que concida
con la de la izquierda
*/

/*
SELECT *
FROM m.huracan h LEFT JOIN m.tifon t
ON (h.codigo = t.cod);
*/

/*
SELECT *
FROM m.huracan h CROSS JOIN m.tifon t;
*/

SELECT * from m.huracan;

SELECT *
FROM m.huracan h RIGHT JOIN m.tifon t
ON (h.codigo = t.cod);

SELECT *
FROM m.huracan h LEFT JOIN m.tifon t
ON (h.codigo = t.cod);


SELECT *
FROM m.huracan h FULL JOIN m.tifon t
ON (h.codigo = t.cod);


/* huracanes con su pais de ocurrencia */

SELECT h.codigo, h.nombre, o.pais, o.categoria
FROM m.huracan h INNER JOIN m.ocurrio o
ON (h.codigo = o.codigo);

SELECT 	H.codigo,
		H.nombre,
		O.pais,
		O.categoria
FROM m.huracan AS H
	JOIN m.ocurrio AS O ON h.codigo = O.codigo
	JOIN m.tifon AS T ON T.cod = H.codigo;

/* huracanes que no se convirtieron en tifon */
/*
SELECT *
FROM m.huracan h LEFT JOIN m.tifon t
ON (h.codigo = t.cod)
WHERE t.cod is NULL;
*/
