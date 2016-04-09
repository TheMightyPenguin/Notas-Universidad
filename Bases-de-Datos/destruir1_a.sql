/* script para destruir la base de datos */

/* Destruir tablas secundarias */
DROP TABLE t.revision;

/* Destruir tablas primarias */
DROP TABLE t.taller;
DROP TABLE t.vehiculo;


/* destruyendo dominios */
DROP DOMAIN t.tipo_nombres;
DROP DOMAIN t.tipo_serial;
DROP DOMAIN t.tipo_precio;
DROP DOMAIN t.tipo_mantenimiento;
DROP DOMAIN t.descripcion;
DROP DOMAIN t.tipo_marca;
DROP DOMAIN t.tipo_fecha;

/* destuir el esquema */
DROP SCHEMA t;

\c postgres


/* destruir la base de datos */
DROP DATABASE vtortolero;

