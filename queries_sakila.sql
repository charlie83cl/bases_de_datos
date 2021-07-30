select * from address;
select
	cu.first_name,
    cu.last_name,
    cu.email,
    concat(ad.address,', ',ad.district) as address,
    ci.city
from city ci inner join address ad
on ci.city_id = ad.city_id inner join customer cu
on ad.address_id = cu.address_id
where ci.city_id = 312;

/*SAKILA CONSULTA 2
¿Qué consulta harías para obtener todas las películas de comedia? 
Su consulta debe devolver el título de la película, la descripción, 
el año de estreno, la calificación, las características especiales y el género (categoría).*/

select * from category;
SELECT 
	f.title,
    f.description,
    f.release_year,
    f.rating,
    f.special_features,
    ca.name
from film f join film_category fc
on f.film_id = fc.film_id join category ca
where ca.category_id = 5;

/*CONSULTA 3
¿Qué consulta harías para obtener todas las películas unidas por actor_id = 5?
 Su consulta debe devolver la identificación del actor, el nombre del actor, 
 el título de la película, la descripción y el año de lanzamiento.*/

SELECT * from actor;

select
	a.actor_id,
    a.first_name,
	a.last_name,
    f.title
from actor a join film_actor fa
on a.actor_id = fa.film_id join film f
where a.actor_id = 5;
/*where a.last_name = "LOLLOBRIGIDA" *//*esta forma tambien funciona*/ 
/*nose porque la impresion se realiza 5 veces. me costo llegar aca. el resultado es parcial*/
	

/*CONSULTA 4 
¿Qué consulta ejecutaría para obtener todos los clientes en store_id = 1 y dentro de estas ciudades (1, 42, 312 y 459)? 
Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.*/

select 
	c.first_name,
    c.last_name,
    c.email,
    ad.address,
    s.store_id

from customer c join address ad
on c.customer_id = ad.address and c.customer_id join store s

where s.store_id = 1;
 


/*CONSULTA 5
. ¿Qué consulta realizarías para obtener todas las películas con una "calificación = G" 
y "característica especial = detrás de escena", unidas por actor_id = 15? Su consulta debe devolver 
el título de la película, la descripción, el año de lanzamiento, la calificación y la función especial. 
Sugerencia: puede usar la función LIKE para obtener la parte 'detrás de escena'.*/


SELECT
	f.title,
    f.description,
    f.release_year,
    f.rating,
    f.special_features
    
from film f
where f.rating = "G";

/*CONSULTA 6 
¿Qué consulta harías para obtener todos los actores que se unieron en el film_id = 369?*/

select	
    f.film_id,
    f.title,
    a.first_name,
    a.last_name

from film f left join actor a
on f.film_id = a.actor_id
where f.film_id = 369;



    
/*from film f left join actor a
on f.film_id = a.actor_id
where f.film_id = 369;/*parece que si esta bueno este codigo no hay ningun actor que participo en la pelicula 369*/





select actor_id from actor;
select film_id from film;
select * from film;
/*CONSULTA 7
¿Qué consulta harías para obtener todas las películas dramáticas con una tarifa de alquiler de 2.99? 
Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación, 
las características especiales y el género (categoría). */

select
	f.film_id,
    f.title,
    f.description,
    f.release_year,
    f.rating,
    f.special_features,
    f.rental_rate,
    ca.name
	
from film f join film_category fc
on f.film_id = fc.film_id join category ca
where ca.name = "Drama" and rental_rate = "2.99";


/*CONSULTA 8
 ¿Qué consulta harías para obtener todas las películas de acción a las que se une SANDRA KILMER? 
 Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación, 
 las características especiales, el género (categoría) y el nombre y apellido del actor. */

select
	f.film_id,
	f.title,
    a.first_name,
    a.last_name
    
from actor a inner join film f

/*este me la gano, no pude lograr que hiciera lo que me pedian. iba bien pero despues del join me enredo todo.*/