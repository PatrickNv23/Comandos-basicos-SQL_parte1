-- TODO LO DE CREAR UNA BD, CREAR SUS TABLAS, CREAR SUS RELACIONES Y LLENAR DATOS SE REALIZÓ EN EL VIDEO DEL CANAL

-- mostrar todas las bases de datos
show databases;

-- usar una base de datos
use empresabd;

-- mostrar todas las tablas de una bd
show tables;

-- mostrar la configuración de una tabla
show create table clientes;

-- mostrar todos los registros de una tabla
select * from clientes;
select * from distritos;
select * from categorias;
select * from facturas;

-- mostrar los registros pero de campos específicos en una tabla
select idCliente, razonSocial from clientes;

-- operaciones dentro del select
select (4*5);
select (20/5);
select (5-4);
select (4+5) as suma;

-- mostrar los campos de una tabla
describe clientes;

-- contar los registros de una tabla y asignarle un nombre al resultado
select count(*) as total from clientes;
select count(direccion) as total from clientes;

-- WHERE
select * from distritos where nombre = "Distrito2";
select * from distritos where idDistrito = 1003; 

-- LIKE
select * from clientes where direccion like "A%";
select * from clientes where direccion like "%4";
select * from clientes where direccion like "%De%";

-- LEFT
select left(descripcion,2) from categorias;
select left(fecha,4) as año from facturas where pendientePago = 1;

-- RIGHT
select * from categorias;
select right(descripcion,2) from categorias;
select right(fecha,2) as dia from facturas where pendientePago = 0;

-- UPPER
select * from clientes;
select upper(razonSocial) from clientes; 
select upper(razonSocial) from clientes where idCategoria = 1002;
select upper(left(razonSocial,3)) as 3DIGITOS, razonSocial from clientes; 

-- SUM
select sum(monto) as montoTotal from facturas;


-- ORDENAR
select * from clientes order by direccion;
select * from clientes order by direccion desc;

-- fecha
select now();
select curdate();
select curtime();
select day(now()) as dia;
select day(now()) + 5 as dia;
select month(now()) as mes;
select year(now()) as año;









