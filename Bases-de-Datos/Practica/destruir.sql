/* script para destruir la base de datos */

/* Destruir tablas secundarias */
DROP TABLE t.padres_c;
DROP TABLE t.caballo;

/* Destruir tablas primarias */
DROP TABLE t.jinete;


/* destruyendo dominios */
DROP DOMAIN t.tipo_nombre;
DROP DOMAIN t.tipo_cedula;

/* destuir el esquema */
DROP SCHEMA t;

\c postgres

/* destruir la base de datos */
DROP DATABASE vtortolero;

