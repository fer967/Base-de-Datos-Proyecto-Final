use ferreteria_prueba;

select* from productos             -- valido datos        
limit 6;

set @autocommit = 0;               -- desactivo autocommit

start transaction;                -- comienza transaccion

update productos                  -- actualizo importe de un producto
set importe = 220
where id_producto = 6;                

select* from productos            -- veo importe actual , luego modificado y finalmente reestablecido
limit 6;
             
rollback;                         -- deshacer actualizacion

commit;                           -- confirma 
 
 
 
 
select* from clientes;            -- valido datos tabla clientes (17 registros)

set @@autocommit = 0;             -- desactivo autocommit

start transaction;                -- comienzo transaccion

insert into clientes(id_cliente,nombre,apellido,calle,barrio,telefono)     -- inserto nuevos registros
values(18,'jorge','charrete','argandoña 1567','san vicente',556677);
insert into clientes(id_cliente,nombre,apellido,calle,barrio,telefono)
values(19,'alfredo','rico','cochabamba 1399','pueyrredon',447711);
insert into clientes(id_cliente,nombre,apellido,calle,barrio,telefono)
values(20,'emilia','chiodi','discepolo 1345','alberdi',339900);
insert into clientes(id_cliente,nombre,apellido,calle,barrio,telefono)
values(21,'ruben','urbano','lima 955','general paz',112288);
savepoint lote_1;                                                          -- primer punto de control

insert into clientes(id_cliente,nombre,apellido,calle,barrio,telefono)     -- inserto 4 registros mas
values(22,'laura','redondo','bernis 118','olivos',123456);
insert into clientes(id_cliente,nombre,apellido,calle,barrio,telefono)
values(23,'adrian','guerrero','los platanos 377','mirasol',345678);
insert into clientes(id_cliente,nombre,apellido,calle,barrio,telefono)
values(24,'juana','molina','colon 351','america',552299);
insert into clientes(id_cliente,nombre,apellido,calle,barrio,telefono)
values(25,'cristian','gomes','florencia 399','el trebol',543210);
savepoint lote_2;                                                          -- segundo punto de control

select* from clientes;                         -- veo 8 nuevos registros

rollback to lote_1;                            -- deshago 4 de los datos insertados

commit;                                        -- confirmo transaccion

delete from clientes                           -- con autocommit en 1 dejo de nuevo los 17 registros iniciales
where id_cliente > 17;
