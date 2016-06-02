
create schema m;

create table m.huracan(
           codigo int primary key,
           nombre varchar(10)
);

create table m.lugar(
           pais text primary key,
           continente varchar(20)
);

create table m.ocurrio(
           codigo int,
           pais text,
           categoria int,
           primary key(codigo, pais),
           foreign key (codigo) references m.huracan,
           foreign key (pais) references m.lugar
);

create table m.tifon(
           cod int primary key,
           nom varchar(10)
);



insert into m.huracan values (12008,'ike');
insert into m.huracan values (22008,'rita');
insert into m.huracan values (32008,'sander');
insert into m.huracan values (22010,'elena');

insert into m.lugar values ('Cuba','Centroamerica');
insert into m.lugar values ('Jamaica','Centroamerica');
insert into m.lugar values ('Mexico','Centroamerica');
insert into m.lugar values ('Brasil','Centroamerica');

insert into m.ocurrio values (12008,'Cuba',5);
insert into m.ocurrio values (22008,'Cuba',4);
insert into m.ocurrio values (12008,'Mexico',4);
insert into m.ocurrio values (32008,'Brasil',3);
insert into m.ocurrio values (22008,'Jamaica',3);

insert into m.tifon values (12008,'ike');
insert into m.tifon values (22000,'maria');
insert into m.tifon values (36541,'ernesto');
insert into m.tifon values (22010,'elena');
insert into m.tifon values (11111,'miguel');
insert into m.tifon values (22333,'luis');
insert into m.tifon values (54789,'pedro');
insert into m.tifon values (66558,'cesar');
