use ferreteria_prueba;

create or replace view contacto_proveedores_v
as(select nombre,telefono from proveedores);

select* from contacto_proveedores_v;

create or replace view clientes_v
as (select nombre,apellido from clientes where barrio = 'pueyrredon');     -- nombre del barrio

select* from clientes_v;

create or replace view productos_v
as(select descripcion,importe from productos order by descripcion asc);

select* from productos_v;

create or replace view cliente_factura_v
as(select nombre,apellido,importe from facturacion f inner join clientes c 
   on (f.id_cliente = c.id_cliente) order by apellido asc);
   
select* from cliente_factura_v;

create or replace view facturacion_diaria_v
as(select sum(importe) from facturacion where fecha = '2023-08-04');    -- fecha de consulta

select* from facturacion_diaria_v;




