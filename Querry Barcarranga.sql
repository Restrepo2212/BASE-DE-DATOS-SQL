create database barcarranga
use barcarranga

create table Licor(
Id_Licor int primary key,
marca varchar (20),
tipo varchar (20),
cantidad bigint,
valor money)

create table Provedores(
Id_provedores int primary key,
nombre varchar (20),
apellidos varchar (20),
telefono bigint,
dirección varchar (40),
correo varchar (30))

create table cliente(
Id_cliente int primary key,
nombre varchar (20),
apellidos varchar (20),
dirección varchar (30),
telefono bigint,
correo varchar(30))

create table Ventas2 (
Id_Ventas int primary key,
Idcliente bigint,
Nmonbre varchar (20),
Direccion varchar (20),
Correo varchar (20),
Telefono bigint,
fecha date,
cantidad bigint,
precio money)

create table Clientes_Licor (
Id_cliente int,
Id_Licor int,
constraint venli foreign key (Id_cliente) references cliente (Id_cliente),
constraint venli2 foreign key (Id_Licor) references Licor (Id_Licor))


create table Ventas2_Licor (
Id_Ventas int,
Id_Licor int,
constraint venli3 foreign key (Id_Ventas) references Ventas2 (Id_Ventas),
constraint venli4 foreign key (Id_Licor) references Licor  (Id_Licor))

create table Provedores_Licor (
Id_provedores int,
Id_Licor int,
constraint venli5 foreign key (Id_provedores) references Provedores (Id_provedores),
constraint venli6 foreign key (Id_Licor) references Licor (Id_Licor))





