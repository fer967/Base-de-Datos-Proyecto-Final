create database ferreteria;
use ferreteria;

create table clientes(
id_cliente int not null auto_increment primary key,
nombre varchar (50) not null,
apellido varchar (50) not null,
calle varchar (50) not null,
barrio varchar (50) not null,
telefono int not null);

create table empleados(
id_empleado int not null auto_increment primary key,
nombre varchar (50) not null,
apellido varchar (50) not null,
calle varchar (50) not null,
barrio varchar (50) not null,
telefono int not null);

create table proveedores(
id_proveedor int not null auto_increment primary key,
nombre varchar (50) not null,
tipo_fiscal varchar (20) not null,
calle varchar (50) not null,
barrio varchar (50) not null,
telefono int not null,
email varchar (50)not null);

create table productos(
id_producto int not null auto_increment primary key,
descripcion varchar (50) not null,
precio float not null);

alter table productos 
add id_proveedor int not null;

alter table productos
add foreign key (id_proveedor)references proveedores(id_proveedor);

create table ventas(
id_venta int not null auto_increment primary key,
id_factura int not null,
id_producto int not null);

alter table ventas
add foreign key (id_factura) references facturacion (id_factura),
add foreign key (id_producto) references productos (id_producto);




create table facturacion(
id_factura int not null auto_increment primary key,
fecha date not null,
importe float not null,
tipo_entrega varchar (40)not null);

alter table facturacion 
add id_cliente int not null ,
add id_empleado int not null;

alter table facturacion 
add foreign key (id_cliente) references clientes (id_cliente),
add foreign key (id_empleado) references empleados (id_empleado);









 


 

