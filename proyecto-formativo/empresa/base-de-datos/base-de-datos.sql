show databases;
create database TJDataGroup1;
show databases;
use TJDataGroup1;
create table Usuario(nombres VARCHAR(25), apellidos VARCHAR(25), cod_ciudad VARCHAR(3), direccion VARCHAR(50), email VARCHAR(100), telefono integer, contrasena VARCHAR(32), cod_tipo_identificacion VARCHAR(2), identificacion integer, fecha_nacimiento VARCHAR(30));
show tables;
desc usuario;
create table Productos(referencia integer, nombre VARCHAR(25), descripcion VARCHAR(100), precio integer, oferta integer);
show tables;
desc Productos;
create table tipo_identificacion(codigo VARCHAR(2), tipo_identificacion VARCHAR(10));
show tables;
desc tipo_identificacion;
create table ciudad(codigo VARCHAR(20), ciudad VARCHAR(15));
show tables;
desc ciudad;
