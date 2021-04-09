/* Write your PL/SQL query statement below */
select u.name,
coalesce(sum(distance),0) travelled_distance
from users u left join rides r on u.id = r.user_id
group by  u.name
order by  2 desc ,1 asc