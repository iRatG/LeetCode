/* Write your PL/SQL query statement below */

select  contest_id,
        round(dist / k.cnt * 100 , 2) as percentage
from (
        select 
            r.contest_id,
            count(distinct r.user_id) dist
        from 
            register r 

        group by r.contest_id
)
left join 
        (select count(*) cnt from users) k
        on 1=1
order by  2 desc        , 1