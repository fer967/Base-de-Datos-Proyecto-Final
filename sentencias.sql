
use mysql;                    -- base de datos del sistema

show tables;                  -- muestra todas las tablas del sistema

select* from user;            -- selecciona todos los usuarios

create user 'gabriel'@'localhost' identified by 'gabriel';           -- creo nuevo usuario y su contraseña 

create user 'fernando'@'localhost' identified by 'fernando';         -- creo segundo usuario y su contraseña 

grant select on ferreteria_prueba.* to 'gabriel'@'localhost';        -- permiso solo lectura todas las tablas de la base ferreteria_prueba   

grant select,insert,update on ferreteria_prueba.* to 'fernando'@'localhost';     -- permiso para leer,insertar y/o modificar las tablas de la base ferreteria_prueba

show grants for 'gabriel'@'localhost';               -- muestra los permisos del primer usuario

show grants for 'fernando'@'localhost';              -- muestra los permisos del segundo usuario







