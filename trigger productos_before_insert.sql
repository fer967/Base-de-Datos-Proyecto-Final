use ferreteria_prueba;

create table productos_log_I(                             -- TABLA AUXILIAR DE PRODUCTOS INSERTADOS
id_producto int,descripcion varchar(50),importe float,id_proveedor int,fecha_cambio datetime, user_cambio varchar(30));

drop trigger if exists productos_before_insert;

delimiter $$
            create trigger productos_before_insert       -- TRIGGER PARA INSERTAR UN PRODUCTO NUEVO
            before insert on productos
            for each row
    begin 
         insert into productos_log_I values
            (new.id_producto,new.descripcion,new.importe,new.id_proveedor,now(),user());
    end $$
delimiter ;

select* from productos;

insert into productos values(null,'ladrillo chico',130,2);     -- PRODUCTO NUEVO

select* from  productos_log_I;
   
   