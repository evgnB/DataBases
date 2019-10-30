use vk;


/* 1.• - Пусть задан некоторый пользователь. 
Из всех друзей этого пользователя найдите человека, 
который больше всех общался с нашим пользователем.
*/


select 
	count(*) as `how match`,
	(select firstname from users  where id = from_user_id ) as who,
	(select firstname from users where id = to_user_id) as someone
	
from messages
group by from_user_id, to_user_id
limit 1	

-- запрос показывает кому писали больше всего сообщений и кто их писал
-- (перед этим вручную подредактировал таблицу сообщений, добавив несколько для одного пользователя)


-- следующие задания вызвали проблему в выполнении в связи с сравнением данных из разных таблиц


/*
-- 2. Подсчитать общее количество лайков, которые получили пользователи младше 10 лет..

select count(*)
from likes
where (select year(current_date) - year(birthday) from profiles) < 10



select 
* -- count(media_id)
from likes
where media_id = (select id from media where user_id = (select id from users where id = (select id from profiles having (year(current_date)-year(birthday)) < 10)))



select count(*)
from likes where
	(select *
	from profiles where (year(current_date)-year(birthday) < 10) 

select  distinct media_id
from likes 


select media_id from likes where likes.

-- 3. Определить кто больше поставил лайков (всего) - мужчины или женщины?

select profiles.*, profiles.gender, likes.user_id from profiles, likes 

*/