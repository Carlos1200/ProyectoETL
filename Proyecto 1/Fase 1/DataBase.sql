Create database proyectoETL
use proyectoETL

create table hechos(
id uniqueidentifier primary key,
id_pais uniqueidentifier foreign key references DimPais(id),
cod_arancelario uniqueidentifier foreign key references DimAranceles(id),
year int,
valor float
)

create table DimPais(
id uniqueidentifier primary key,
nombre varchar(100))

create table DimAranceles(
id uniqueidentifier primary key,
cod varchar(15),
descripcion varchar(255)
)

delete from hechos
delete from DimAranceles
delete from DimPais

select p.nombre,a.cod,h.year,h.valor from hechos h
inner join DimAranceles a
on a.id=h.cod_arancelario
inner join DimPais p
on p.id=h.id_pais
where (p.nombre='Uruguay') and (a.cod='1006309000')
order by h.year