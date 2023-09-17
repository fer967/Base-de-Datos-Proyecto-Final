use ferreteria_prueba;

drop procedure if exists sp_producto_nuevo;       -- ingresa producto nuevo a la tabla productos
delimiter $$
create procedure sp_producto_nuevo(id_pdo int,nombre char(50),imp float,id_pv int)
begin
     declare existe_producto int;                 -- variable para determinar si el producto ya existe
     declare id int;
     set existe_producto = (select count(*) from productos where descripcion = nombre);
     if existe_producto = 0 then
     insert into productos(id_producto,descripcion,importe,id_proveedor)   -- si no existe lo inserta
                 values(id_pdo,nombre,imp,id_pv);
       set id = last_insert_id();               
    else 
       set id = 0;                       -- si ya esta insertado muestra id = 0
     end if;
      select id;
  end $$
  delimiter ;
  
  call sp_producto_nuevo(null,'rollo de alambre',2950,6);        -- ingreso producto nuevo
  
  select* from productos;
  
