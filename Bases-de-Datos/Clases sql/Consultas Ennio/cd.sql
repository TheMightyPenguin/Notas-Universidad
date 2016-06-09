/*SELECT  tipo
FROM dulce.producto;

SELECT DISTINCT tipo
FROM dulce.producto;*/
/*
SELECT  codprod,
		tipo,
		precio
FROM dulce.producto 
WHERE precio <= 10;


SELECT  codprod,
		tipo,
		precio,
		productor
FROM dulce.producto 
WHERE precio BETWEEN 20 AND 40;

SELECT ROUND(AVG(precio),2) "Precio Promedio"
FROM dulce.producto
WHERE tipo = 'Chocolate';


SELECT count(*)
FROM dulce.Producto as P
WHERE p.precio  > ( SELECT AVG(precio) FROM dulce.producto);

SELECT COUNT(*)
FROM(
	SELECT precio,AVG(p.precio) OVER() AS Promedio
	FROM dulce.Producto as P
) AS J
WHERE j.precio > j.Promedio;
*/
/*
DELETE FROM dulce.producto
WHERE tipo = 'Chocolate';

UPDATE dulce.producto
SET precio = precio + 100;


SELECT F.codigo,F.nombre, MIN(P.precio)
FROM dulce.producto AS P
 JOIN dulce.Fabricante AS F ON F.codigo = P.productor
GROUP BY F.codigo, F.nombre;*/
