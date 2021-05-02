/* Write your PL/SQL query statement below */
select distinct
u.name, u.mail
from (
select 
gold_medal user_id 

from contests
group by gold_medal
having count(*) > 2

union all

select distinct user_id from (
select user_id, 
case when  
lead(contest_id,1) over(partition by  user_id order by contest_id)-contest_id =1 
and contest_id - lag(contest_id,1) over(partition by  user_id order by contest_id) =1
    then  1
        else 0
end diff
from 
(
    select contest_id, gold_medal user_id  from contests
        union all
    select contest_id, silver_medal user_id from contests 
        union all
    select contest_id,  bronze_medal user_id from contests 
)
) where diff = 1
) p
left join users u 
on u.user_id = p.user_id 