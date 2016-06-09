/*SELECT *
FROM m.huracan;

SELECT *
FROM m.lugar;

SELECT *
FROM m.ocurrio;

SELECT *
FROM m.tifon;*/

/*
SELECT *
FROM m.huracan

union ALL

SELECT *
FROM m.tifon;*/

/*
SELECT *
FROM m.huracan

EXCEPT

SELECT *
FROM m.tifon; */

/*
SELECT *
FROM m.tifon

EXCEPT

SELECT *
FROM m.huracan;*/

/*
SELECT *
FROM m.tifon

INTERSECT

SELECT *
FROM m.huracan;*/

/*JOIN IMPLICITO
SELECT *
FROM m.huracan AS H, m.tifon AS T
WHERE H.codigo = T.cod;*/


/*INNER IMPLICITO
SELECT *
FROM m.huracan AS H
	JOIN m.tifon AS T ON H.codigo = T.cod;*/

SELECT *
FROM m.huracan AS H
	RIGHT JOIN m.tifon AS T ON H.codigo = T.cod;
	
SELECT *
FROM m.huracan AS H
	LEFT JOIN m.tifon AS T ON H.codigo = T.cod;
	
SELECT *
FROM m.huracan AS H
	FULL JOIN m.tifon AS T ON H.codigo = T.cod;

--Igual que el inner	
SELECT *
FROM m.huracan AS H
	CROSS JOIN m.tifon AS T WHERE H.codigo = T.cod;

SELECT 	H.codigo,
		H.nombre,
		O.pais,
		O.categoria
FROM m.huracan AS H
	JOIN m.ocurrio AS O ON h.codigo = O.codigo
	JOIN m.tifon AS T ON T.cod = H.codigo;
