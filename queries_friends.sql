/*CONSULTA 1*/

select 
	concat(users.first_name,users.last_name) as Usuario,
    concat(friend.first_name,friend.last_name) as Amigo
    
    
from users join friendships
on users.id = friendships.user_id join users as friend
on friend.id = friendships.friend_id
where users.first_name = 'Kermit' or friend.first_name = 'Kermit';

/*CONSULTA 2*/
select
	count(id) as "Cantidad de Amistades"
from friendships;

/*CONSULTA 3*/

select 
	concat(users.first_name,users.last_name) as Usuario,
    count(friendships.id) as 'Cantidad de Amistades'

from users join friendships
on users.id = friendships.user_id join users as friend
on friend.id = friendships.friend_id
group by concat (users.first_name,users.last_name)
order by 2 desc
limit 1;

select
	count(id) from friendships;

select users.first_name, users.last_name, max(total) as "Friends count"
from (select count(friendships.user_id) as total
 from friendships
      group by friendships.user_id) as result, friendships
join users on users.id = friendships.user_id;

select * from users;
select * from friendships;

/*CONSULTA 4*/

insert into users (first_name, last_name, created_at, updated_at) values ('Betty','Boo',now(),now());
insert into friendships (user_id,friend_id, created_at, updated_at) values (6,2,now(),now());
insert into friendships (user_id,friend_id, created_at, updated_at) values (6,4,now(),now());
insert into friendships (user_id,friend_id, created_at, updated_at) values (6,5,now(),now());

/*CONSULTA 5*/
select 
	concat(users.first_name,' ', users.last_name) as Nombre,
    concat(friend.first_name,' ', friend.last_name) as Amigo

from
	users join friendships
    on users.id = friendships.user_id join users as friend
    on friend.id = friendships.friend_id
    where users.first_name= 'Eli'
    order by 2 asc;
    
/*CONSULTA 6*/

delete from friendships
where user_id = 2 and friend_id = 5;

/*CONSULTA 7*/
select 
	concat(users.first_name,' ', users.last_name) as Nombre,
    concat(friend.first_name,' ', friend.last_name) as Amigo
from
	users join friendships
    on users.id = friendships.user_id join users as friend
    on friend.id = friendships.friend_id
    

