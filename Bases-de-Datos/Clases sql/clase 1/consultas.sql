/*
SELECT distinct nombresuc
FROM t.prestamo;
*/

/*
(SELECT ci
FROM t.deposito
WHERE nombresuc = 'Occidente')
UNION
(SELECT ci
FROM t.prestamo
WHERE nombresuc = 'Occidente');
*/

/*
(SELECT ci
FROM t.prestamo)
except
(SELECT ci
FROM t.deposito);
*/

/*
SELECT t.pieza.pnum, ciudad_alm
	FROM t.pieza, t.precio
	WHERE preciop = preciop_sug
		AND t.precio.pnum = t.pieza.pnum;
*/

/*
(SELECT ci
FROM t.prestamo)
INTERSECT
(SELECT ci
FROM t.deposito);

SELECT ci
FROM t.prestamo
WHERE ci
IN
(SELECT ci
FROM t.deposito);
*/

/*
SELECT ci
FROM t.prestamo
WHERE ci 
NOT IN
(SELECT ci
FROM t.deposito);
*/

/*
SELECT p.ci
FROM t.prestamo p, t.prestamo s
WHERE p.nombresuc = s.nombresuc
AND s.ci = '21114828';
*/

/* Los cuentahabientes que han pedido prestamos*/
/*
SELECT C.direccion
FROM t.cuentahabiente C, t.prestamo
WHERE t.prestamo.ci = C.ci;
*/

/*
SELECT pnum, colorp
	FROM t.pieza
	WHERE (colorp, pesop) = any
		(SELECT colorp, pesop 
		FROM t.pieza WHERE ciudad_alm = 'Porlamar');
*/

/*
SELECT P.pnum
	FROM t.pieza P, t.pieza S
	WHERE P.pesop > s.pesop
		AND S.ciudad_alm = 'Porlamar';
*/

/*
SELECT pnum, pesop
FROM t.pieza
WHERE pesop >= all
	(SELECT pesop
	FROM t.pieza
	WHERE ciudad_alm = 'Valencia')
AND ciudad_alm != 'Valencia';
*/

/*Piezas que pesan lo mismo que cualquiera almacenada en Caracas*/
/*
SELECT pnum
FROM t.pieza
WHERE pesop = any
	(SELECT pesop
	FROM t.pieza
	WHERE ciudad_alm = 'Caracas');
*/

SELECT pnum, pesop, colorp
FROM t.pieza
WHERE (pesop, colorp) = any
	(SELECT pesop, colorp
	FROM t.pieza
	WHERE ciudad_alm = 'Caracas')
AND ciudad_alm != 'Caracas';
