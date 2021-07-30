select * from cities;
select * from languages;
select * from countries;
/*CONSULTA 1  DEL CODING DOJO*/

select 
	co.name as "País", 
	la.language as "Idioma", 
    la.percentage as "Porcentaje Hablado"

from countries co join languages la
on co.id = la.country_id
where la.language = 'Slovene'
order by la.percentage desc;

/*CONSULTA 2*/

select
	co.name as "Pais",
    count(ci.id) as "Nro Ciudades"
from countries co join cities ci 
on co.id = ci.country_id
group by co.name
order by count(ci.id) desc;

/*CONSULTA 3*/

select
	ci.name,
    ci.population
from countries co join cities ci
on co.id = ci.country_id
where co.name = "Mexico"
order by ci.population desc;

/*CONSULTA 4
¿Qué consulta ejecutarías para obtener todos los idiomas 
en cada país con un porcentaje superior al 89%? Tu consulta debe
organizar el resultado por porcentaje en orden descendente. (1)*/

select 
	co.name,
    la.language,
    la.percentage
from countries co join languages la
on co.id = la.country_id
order by 1 asc, 3 desc;
    
/*CONSULTA 5*/

select
	name,
    surface_area,
    population
from countries
where surface_area < 501 and population > 100000;

/*CONSULTA 6*/

select
	name,
    government_form,
    capital,
    life_expectancy
from countries
where government_form = "Constitutional Monarchy" and capital > 200 and life_expectancy > 75
order by name asc;

/*CAPITAL 7*/

select
	co.name as Pais,
    ci.name as Ciudad,
    ci.district as Distrito,
    ci.population as "Cantidad de Amigos en argentina"
from countries co join cities ci
on co.id = ci.country_id
/*having co.name = "Argentina" and ci.population > 500000*/
where co.name = "Argentina" and ci.population > 500000
order by ci.population asc;

/*CONSULTA 8
¿Qué consulta harías para resumir el número de países en cada región? 
La consulta debe mostrar el nombre de la región y el número de países. 
Además, la consulta debe organizar el resultado 
por el número de países en orden descendente. (2)*/

select 
	region as Region,
    count(id) as "Paises x Region"
from countries
group by region
order by 2 desc;
    



    
