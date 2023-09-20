use ferreteria_prueba;

drop trigger if exists productos_before_update;

create table productos_log_U(
id_producto int,descripcion varchar(50),importe float,id_proveedor int,fecha_cambio datetime,user_cambio varchar(30));

delimiter $$
            create trigger productos_before_update                -- TRIGGER PARA ACTUALIZAR IMPORTE DE UN PRODUCTO
            before update on productos
            for each row
      begin 
           insert into productos_log_u
           select id_producto,descripcion,importe,id_proveedor,now(),user()
           from productos
           where id_producto = new.id_producto;
    end $$
 delimiter ;
 
 update productos                          -- ACTUALIZO IMPORTE DE UN PRODUCTO 
 set importe = 180
 where id_producto = 6;
 
 select* from productos;                  -- EN LA TABLA APARECE EL IMPORTE ACTUALIZADO 
 
 select* from productos_log_u;           -- EN TABLA AUXILIAR QUE EL IMPORTE VIEJO
 