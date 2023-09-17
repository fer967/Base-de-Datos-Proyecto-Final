use ferreteria_prueba;

drop procedure if exists sp_descripcion_ordenada;    -- ordena alfabeticamente el nombre del producto

delimiter $$
create procedure sp_descripcion_ordenada(in field char(50))      -- campo que quiero ordenar
begin
      if field <> '' then
            set @producto_ordenado = concat('order by ',field);
      else set @producto_ordenado = '';                           -- si el campo es nulo no ejecuta
      end if;
      set @ordenar = concat('select* from productos ',@producto_ordenado);
      prepare ejecutar from @ordenar;
      execute ejecutar;
      deallocate prepare ejecutar;
 end $$
 delimiter ;
 
  call sp_descripcion_ordenada("descripcion");       -- campo que quiero ordenar
  
   select* from productos;
   