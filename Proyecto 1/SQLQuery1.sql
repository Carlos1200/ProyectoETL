Create database ProyectoETL
use ProyectoETL


create table anios(
a�o varchar(5) primary key
)

select * from anios

create table importe(
 a�o varchar(5) foreign key references anios(a�o),
 CIF money
)

select * from importe

Create table cereales(
codigo varchar(15),
descripcion text,
pais varchar(30),
a�o varchar(5) foreign key references anios(a�o)
)

select * from cereales
order by codigo

select codigo,pais,descripcion, c.a�o
from cereales c
inner join anios a
on a.a�o=c.a�o
