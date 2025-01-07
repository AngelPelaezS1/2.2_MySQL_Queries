use tienda;

select nombre from producto;
select nombre, precio from producto;
select * from producto;
select nombre, precio as precio_euro, precio * 1.1 as precio_dollar from producto;
select nombre as nom_de_producto, precio as euro, precio * 1.1 as dollar from producto;
select upper(nombre), precio from producto;
select lower(nombre), precio from producto;
select upper(left(nombre, 2)), nombre from fabricante;
select nombre, round(precio, 0) as round from producto;
select nombre, truncate(precio, 0) as truncate from producto;
select codigo_fabricante from producto;
select distinct codigo_fabricante from producto;
select codigo_fabricante from producto order by codigo_fabricante asc;
select codigo_fabricante from producto order by codigo_fabricante desc;
select nombre, precio from producto order by nombre ASC, precio DESC;
select * from fabricante limit 5;
select * from fabricante limit 3, 2;

