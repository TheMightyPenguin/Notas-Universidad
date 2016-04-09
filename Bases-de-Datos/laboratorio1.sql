/* ejemplo de trabajo con script */

create database victor template template1;

\c victor

create schema e;

create table e.x(
	ci int,
	nombre varchar(10)
);
