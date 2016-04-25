SELECT * FROM t.caballo;

SELECT * FROM t.jinete;

SELECT * FROM t.padres_c;

SELECT nombre, 
       string_agg(t.padres_c.progenitor, ', ') as padres
       FROM t.caballo
       INNER JOIN t.padres_c
       ON t.caballo.ci_jinete = t.padres_c.ci_jinete
       GROUP BY 1;
