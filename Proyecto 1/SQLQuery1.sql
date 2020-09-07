Create database ProyectoETL
use ProyectoETL


create table anios(
año varchar(5) primary key
)

select * from anios

create table importe(
 año varchar(5) foreign key references anios(año),
 CIF money
)

select * from importe

Create table cereales(
codigo varchar(15),
descripcion text,
pais varchar(30),
año varchar(5) foreign key references anios(año)
)

select * from cereales

select codigo, descripcion,pais, c.año
from cereales c
inner join anios a
on a.año=c.año
inner join importe i
on a.año=i.año
