use ferreteria_prueba;
drop function  if exists getApellido;
delimiter $$
create function getApellido (clienteId int)
returns varchar (50)
reads sql data
begin
     declare salida varchar (50);
     select apellido
     into salida
     from clientes
     where id_cliente = clienteId;
     
     return salida;
end $$
delimiter ;     

select getApellido (5) as nombreCliente;






   


