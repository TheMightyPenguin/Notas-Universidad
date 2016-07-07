-- SELECT * from ut.producto;
--
-- SELECT * from ut.categoria;

(SELECT p.codigo, p.nombre
FROM ut.producto p
WHERE p.codigo >= 2);

(SELECT c.codigo, c.nombre
FROM ut.categoria c
WHERE c.nombre <> 'comestible');

(SELECT p.codigo, p.nombre
FROM ut.producto p
WHERE p.codigo >= 2)
UNION
(SELECT c.codigo, c.nombre
FROM ut.categoria c
WHERE c.nombre <> 'comestible');

SELECT p.codigo, c.codigo, c.nombre
FROM ut.producto p
INNER JOIN  ut.categoria c
ON c.codigo = p.codigo;
