Create database grupo5

use grupo5

Create table cereales(
codigo varchar(15) primary key,
descripcion text)

create table importe(
codigo varchar(15) foreign key references cereales(codigo),
año varchar(5),
CIF money
)

create table hechos(
codigo varchar(15) foreign key references cereales(codigo),
pais varchar(30)
)