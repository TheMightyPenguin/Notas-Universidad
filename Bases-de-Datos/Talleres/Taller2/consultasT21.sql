/* 
Taller 2 SQL 
Victor Tortolero
2456909
*/

/* Consulta 1 */
/*
SELECT DISTINCT ON (E.elevacion) E.elevacion, E.ciudad
FROM dm.estacion E;
*/
/*------------*/



/* Consulta 2 */

/* Esta consulta es la que se pide en el enunciado! */
/*
SELECT MIN(T.temp_minima)
FROM dm.estacion E
	INNER JOIN dm.temperatura T
	ON E.codigo_estacion = T.codigo_estacion
WHERE E.latitud = (SELECT MAX(latitud) FROM dm.estacion);
*/

/* 
Esta consulta, regresa la minima de las temperaturas asociadas
a la estacion con latitud mas alta (que tenga temperaturas asociadas)
*/
/*
SELECT MIN(T.temp_minima)
FROM dm.estacion E
	INNER JOIN dm.temperatura T
	ON E.codigo_estacion = T.codigo_estacion
WHERE E.latitud = (SELECT MAX(E.latitud)
				   FROM dm.estacion E
				   INNER JOIN dm.temperatura T
				   ON E.codigo_estacion = T.codigo_estacion);
*/
/*-----------*/



/* Consulta 3 */
/*
SELECT P.temperatura
FROM dm.pronostico P
	INNER JOIN dm.estacion E
	ON E.codigo_estacion = P.codigo_estacion
WHERE E.ciudad = 'Valencia'
ORDER BY (P.fecha_pronostico) DESC;
*/
/*-----------*/



/* Consulta 4 */
/*
SELECT *
FROM dm.estacion E
	LEFT JOIN dm.pronostico P
	ON E.codigo_estacion = P.codigo_estacion
WHERE P.fecha_pronostico BETWEEN '2016-01-01' AND '2016-12-31';
*/
/*-----------*/



/* Consulta 5 */
/* (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion) */

/* Consulta que pide el enunciado */
/*
INSERT INTO dm.pronostico
	SELECT '2016-06-10', 8, 1000.0, 0.00, 'S', 20, codigo_estacion
	FROM dm.estacion;	
*/

/* Insetando a la estacion de valencia */
/*
INSERT INTO dm.pronostico (fecha_pronostico,nubosidad,presion,temperatura,direccion_viento,velocidad_viento,codigo_estacion)
	VALUES('2016-06-10', 8, 1000.0, 0.00, 'S', 20, 80491) 
*/
/*-----------*/
