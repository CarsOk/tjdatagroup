show databases;
create database TJDataGroup1;
show databases;
use TJDataGroup1;

create table ciudades(codigo VARCHAR(3), ciudad VARCHAR(15), primary key(codigo));

insert into ciudades values("BAR", "Barranquilla");
insert into ciudades values("MED", "Medellin");
insert into ciudades values("BOG", "Bogota");

create table tipo_identificacion(codigo VARCHAR(2), tipo_identificacion VARCHAR(25), primary key(codigo));

insert into tipo_identificacion values("CC", "Cedula de ciudadania");
insert into tipo_identificacion values("TI", "Tarjeta de identidad");
insert into tipo_identificacion values("CE", "Cedula de extranjeria");

create table Usuarios(cod_tipo_identificacion VARCHAR(2), identificacion integer, nombres VARCHAR(25), apellidos VARCHAR(25), cod_ciudad VARCHAR(3), direccion VARCHAR(50), email VARCHAR(100), telefono integer, contrasena VARCHAR(32),  primary key(identificacion, cod_tipo_identificacion), foreign key(cod_ciudad) references ciudades (codigo), foreign key(cod_tipo_identificacion) references tipo_identificacion (codigo));


insert into Usuarios values("CC", 0519588221, "Jake", "Daruya Hernandez", "BAR", "Los Cedros Cra 15b #10-22", "jokutanig@gmail.com", 3004394497, "papiteamo.");
insert into Usuarios values("TI", 0891456681, "Kavid", "Cantilla Gonzalez", "BOG", "La Colorada Cra 21a #11-1", "holasoykavi12@outlook.com", 355617694, "locura45.");
insert into Usuarios values("CE", 55228359, "Daniel", "Zapata Salem", "MED", "Villa Santico Cra 1c #43-12", "emestrobalol@gmail.com", 328049155, "yucaconqueso01.");

create table Productos(referencia integer, nombre VARCHAR(30), descripcion VARCHAR(1000), precio integer, oferta integer, primary key(referencia));

insert into Productos values(001, "Audifonos Corsair HS53", "Experimenta la adrenalina de sumergirte en la escena de otra manera. Tener auriculares específicos para jugar cambia completamente tu experiencia en cada partida. Con los Corsair HS35 Stereo no te pierdes ningun detalle y escuchas el audio tal y como fue diseñado por los creadores.", 425000, 0);
insert into Productos values(002, "Auriculares in-ear gamer inalámbricos Lenovo", "Cuenta con tecnologia True Wireless. Alcance inalambrico de 10 m. La bateria dura 4 h. Modo manos libres incluido. Con estuche de carga inalambrica. Con microfono incorporado. Resistentes al agua. Su clasificación IP es IPX5. Sonido superior y sin limites. Comodos y practicos.", 168000, 10);
insert into Productos values(003, "Mouse inalambrico HP 200", "Contiene usb inalambrico. Posee rueda de desplazamiento. Con sensor óptico. Resolucion de 1000ppp. Creado para llevar a todas partes. Control inteligente y navegación facil.", 40000, 5);

show tables;
desc usuarios;
desc Productos;
desc tipo_identificacion;
desc ciudades;
select * from ciudad;
select * from tipo_identificacion;
select * from Usuarios;
select * from Productos;