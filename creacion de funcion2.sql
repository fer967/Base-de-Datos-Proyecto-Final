use ferreteria_prueba;


drop function if exists getProducto;
delimiter $$
create function getProducto (nombre char(50))      -- ingreso nombre del producto para saber el importe
returns float 
reads sql data
  begin 
        declare resultado float;
        select importe
        into resultado
        from productos
        where descripcion = nombre;
           return resultado;
  end $$
  delimiter ; 
      
  select getProducto('destornillador plano') as importe;    
  

