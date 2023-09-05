use ferreteria_prueba;

insert into clientes (id_cliente,nombre,apellido,calle,barrio,telefono)
values
(1,'carlos','balmaceda','potosi 2481','pueyrredon',4512388),
(2,'lara','sanchez','paysandu 720','talleres este',5286540),
(3,'domingo','pereyra','setubal 1529','san nicolas',3445059),
(4,'esteban','marquez','cochabamba 1930','pueyrredon',4528954),
(5,'adriana','ceballos','wilson 1359','yofre norte',223580),
(6,'maria','gutierrez','charcas 3714','los pinos',6477123),
(7,'rodolfo','rodriguez','puerto rico 925','talleres este',5244890),
(8,'luis','galvan','lima 3612','general paz',7522134),
(9,'claudia','santamaria','david luque 823','alem',8144592),
(10,'mariano','sanchez','gianelli 1595','general bustos',7561239),
(11,'lara','fontana','cochabamba 4110','yofre sur',227514),
(12,'esteban','juncos','quevedo 255','nueva italia',5523909),
(13,'alejandro','aguado','luque 1672','villa corina',2355818),
(14,'jose','garzon','colon 2043','quintas alem',5098122),
(15,'silvina','flores','buchardo 2388','pueyrredon',4512008),
(16,'daniel','sanchez','gongora 1633','los paraisos',3729901);

insert into empleados(id_empleado,nombre,apellido,calle,barrio,telefono)
values
(1,'victor','toledo','santa rosa 3450','alberdi',2274539),
(2,'rosa','arguello','quilmes 622','las flores',3781112),
(3,'pablo','caminos','las dalias 3822','constitucion',4599812),
(4,'jorge','toledo','santa rosa 3450','alberdi',2274500),
(5,'laura','albornoz','parana 2834','pueyrredon',4529981),
(6,'federico','britos','asuncion 771','talleres este',3887102),
(7,'gaston','perez','galicia 177','san martin',6124490),
(8,'gabriel','gutierrez','montana 2980','constitucion',4500812);

insert into proveedores(id_proveedor,nombre,tipo_fiscal,calle,barrio,telefono,email)
values
(1,'malagueño','srl','catamarca 1340','los platanos',2719930,'malageño@hotmail'),
(2,'palmar','srl','mujica 2755','centro',723341,'palmar@gmail'),
(3,'acidar','srl','san salvador 3911','cervantes',4528710,'aceros_acindar@hotmail'),
(4,'plasticos rj','monotributo','sarmiento 3405','mirasoles',6200917,'rjplast@abmail'),
(5,'loma negra','srl','las playas 4910','tablada',2903045,'loma_negra@hotmail'),
(6,'canteras cordoba','sh','av.cordoba 1662','san vicente',5128840,'cantecor@gmail'),
(7,'bulocor','monotributo','san martin 106','mirasoles',6299340,'bulocor@abmail'),
(8,'ramallo hnos','monotributo','nevada 1288','republica',1652330,'ramallo_hnos@gmail'),
(9,'hidronar','sh','juan perez 3911','centro',2399011,'hidronar@gmail'),
(10,'ciano','srl','libertad 2777','los filtros',9466512,'cianoq@hotmail'),
(11,'pintered','srl','costagrande 5712','santa catalina',7550920,'pintered@abmail'),
(12,'ger-mac','monotributo','panaholma 1277','talleres este',3629910,'ger_mac@abmail'),
(13,'bahco','srl','san martin 2820','mirasoles',6230001,'bahco@gmail'),
(14,'ezeta','srl','sarmiento 166','pueyrredon',4519920,'ezeta@hotmail'),
(15,'3m','srl','londres 2883','torres',2004582,'3m@hotmail');

insert into facturacion(id_facturacion,id_cliente,id_empleado,fecha,importe,tipo_entrega)
values
(1,7,1,'2023-08-01',1545.5,'retiro_tienda'),
(2,12,3,'2023-08-01',540.3,'retiro_tienda'),
(3,4,4,'2023-08-02',1886.1,'domicilio'),
(4,8,1,'2023-08-02',2500,'retiro_tienda'),
(5,15,6,'2023-08-03',3805.9,'retiro_tienda'),
(6,7,2,'2023-08-03',80,'domicilio'),
(7,5,3,'2023-08-03',7795,'retiro_tienda'),
(8,6,5,'2023-08-03',3825.9,'domicilio'),
(9,13,1,'2023-08-04',635.5,'retiro_tienda'),
(10,14,4,'2023-08-04',2250,'domicilio'),
(11,4,6,'2023-08-04',6701.1,'retiro_tienda'),
(12,9,4,'2023-08-04',160,'retiro_tienda'),
(13,11,8,'2023-08-05',1120.3,'domicilio'),
(14,1,1,'2023-08-05',540.3,'retiro_tienda'),
(15,10,2,'2023-08-07',3825.9,'domicilio'),
(16,15,3,'2023-08-07',2500,'retiro_tienda');


insert into productos(id_producto,descripcion,importe,id_proveedor)
values
(1,'cal hidratada',1500,1),
(2,'tuerca 3/8',20,8),
(3,'latex interior 10 lts',3000,11),
(4,'tela esmeril 22o',540.1,15),
(5,'destornillador plano',1850.5,13),
(6,'ladrillo block grande',160,2),
(7,'mecha 10 mm',635.5,4),
(8,'clavo 20 mm',10,3),
(9,'balde plastico',850.5,4),
(10,'perforadora de mano',2500,12),
(11,'cemento 50 kg',4350.6,5),
(12,'caño de agua 3/4',820.3,9),
(13,'granza 2',1945,6),
(14,'tornillo para madera',35.6,7),
(15,'mecha vidia 8mm',750,14),
(16,'alicate chico',2250.8,13),
(17,'esmalte sintetico',2980,11),
(18,'alambre de construccion',1499.9,3),
(19,'pincel 4',825.9,11),
(20,'entrerosca 1/2',300,9);


insert into ventas(id_venta,id_facturacion,id_producto)
values
(1,1,18),
(2,1,14),
(3,1,8),
(4,2,4),
(5,3,5),
(6,3,14),
(7,4,10),
(8,5,19),
(9,5,17),
(10,6,2),
(11,7,1),
(12,7,11),
(13,7,13),
(14,8,3),
(15,8,19),
(16,9,7),
(17,10,16),
(18,11,9),
(19,11,1),
(20,11,11),
(21,12,6),
(22,13,12),
(23,13,20),
(24,14,4),
(25,15,3),
(26,15,19),
(27,16,10);







