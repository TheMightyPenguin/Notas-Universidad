/* tipo de todos los productos */
/*
SELECT DISTINCT p.tipo
FROM dulce.producto p;
*/

/* Codigo tipo y precio de los productos con precio <= a 10*/
/*
SELECT p.codprod, p.tipo, p.precio
FROM dulce.producto p
WHERE p.precio <= 10;
*/

/* tipo y precio de todos los productos cuyos precios estan entre 20 y 40 */
/*
SELECT p.tipo, p.precio, p.productor
FROM dulce.producto p
WHERE p.precio BETWEEN 20 AND 40;
*/

/*
SELECT p.tipo, (p.precio * 1000) AS Bs
FROM dulce.producto p;
*/

/* Precio promedio de todos los productos del tipo chocolate */
/*
SELECT ROUND(AVG(p.precio), 2) as "precio promedio"
FROM dulce.producto p
WHERE p.tipo = 'Chocolate';
*/

/* Todos los productos ordenados por tipo ascendentemente*/
/*
SELECT p.tipo, p.productor
FROM dulce.producto p
ORDER BY (p.tipo) ASC;
*/

SELECT p.tipo, p.productor
FROM dulce.producto p
ORDER BY (p.tipo) ASC, p.precio DESC;

