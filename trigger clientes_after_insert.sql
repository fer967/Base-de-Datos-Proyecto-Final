use ferreteria_prueba;

drop trigger if exists clientes_after_insert;       

create table clientes_log_I(id_cliente int,nombre varchar(50),apellido varchar(50),calle varchar(50),
barrio varchar(50),telefono int,fecha_cambio datetime,user_cambio varchar(30));            -- TABLA AUXILIAR (LOG) DE CLIENTES


delimiter $$
            create trigger clientes_after_insert    -- TRIGGER PARA INSERTAR NUEVO CLIENTE      
            after insert on clientes
            for each row
   begin  
         insert into clientes_log_I values (new.id_cliente,new.nombre,new.apellido,new.calle,new.barrio,
                                     new.telefono,now(),user());
   end $$
delimiter ; 

insert into clientes 
values(17,'victor','fontana','contursi 1245','pueyrredon',45199);     -- NUEVO CLIENTE
 
select* from clientes;          -- TABLA DE LA BASE

select* from clientes_log_I;    -- TABLA DONDE QUEDA REGISTRADO TAMBIEN EL NUEVO CLIENTE