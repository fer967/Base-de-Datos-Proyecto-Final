create database ferreteria_prueba;
use ferreteria_prueba;

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
tipo_fiscal varchar(20)not null,
calle varchar (50) not null,
barrio varchar (50) not null,
telefono int not null,
email varchar(50)not null);

create table facturacion(
id_facturacion int not null auto_increment primary key,
id_cliente int not null,
id_empleado int not null,
fecha date, 
importe float not null,
tipo_entrega varchar (30)not null,
foreign key(id_cliente) references clientes(id_cliente),
foreign key(id_empleado) references empleados (id_empleado));

create table productos(
id_producto int not null auto_increment primary key,
descripcion varchar (50)not null,
importe float not null,
id_proveedor int not null,
foreign key(id_proveedor) references proveedores (id_proveedor));

create table ventas(
id_venta int not null auto_increment primary key,
id_facturacion  int not null,
id_producto int not null,
foreign key (id_facturacion) references facturacion (id_facturacion),
foreign key (id_producto) references productos (id_producto));




 






