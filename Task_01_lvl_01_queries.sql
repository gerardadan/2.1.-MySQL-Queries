select nombre from tienda.producto;
select nombre, precio from tienda.producto;
select * from tienda.producto;
select nombre, concat(precio, ' $') as precio_dolar, concat(precio, ' €') as precio_euro from tienda.producto;
select nombre as 'nom producte', concat(precio, ' $') as precio_dolar, concat(precio, ' €') as precio_euro from tienda.producto;
select upper(nombre) from tienda.producto;
select lower(nombre) from tienda.producto;
select nombre, concat(upper(left(nombre, 2)),substring(nombre, 3)) as nombre_min from tienda.fabricante;
select nombre, round(precio,2) from tienda.producto;
select nombre, truncate(precio,0) from tienda.producto;
select * from tienda.producto p join tienda.fabricante f on p.codigo_fabricante = f.codigo where p.codigo_fabricante is not null;
select distinct f.codigo from tienda.fabricante f join tienda.producto p on f.codigo =  p.codigo_fabricante;
select nombre from tienda.fabricante order by nombre asc;
select nombre from tienda.fabricante order by nombre desc;
select * from tienda.producto order by nombre asc, precio desc;
select * from tienda.fabricante limit 5;
select  * from tienda.fabricante  limit 4,2;
select * from tienda.producto order by precio asc limit 1;
select * from tienda.producto order by precio desc limit 1;
select  * from tienda.producto  where codigo_fabricante = 2;
select p.nombre, p.precio, f.nombre from tienda.producto p join  tienda.fabricante f on p.codigo_fabricante = f.codigo;



