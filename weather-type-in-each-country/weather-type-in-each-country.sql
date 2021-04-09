/* Write your PL/SQL query statement below */
select 
c.country_name,
case when avg(weather_state) <= 15 then 'Cold' 
     when avg(weather_state) >= 25 then 'Hot'
     else 'Warm' end weather_type
from weather w
left join Countries c
on c.country_id = w.country_id
where w.day between to_date('2019-11-01','yyyy-mm-dd') and  to_date('2019-12-01','yyyy-mm-dd')-1
group by c.country_name