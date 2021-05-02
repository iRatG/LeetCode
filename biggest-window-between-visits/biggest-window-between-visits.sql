/* Write your PL/SQL query statement below */
select user_id , max(lead_dt) as biggest_window from (
select 
user_id,
trunc(
lead(visit_date,1,to_date('2021-01-01','yyyy-mm-dd'))  over(partition by  user_id order by user_id, visit_date asc ) -visit_date  )lead_dt
from uservisits
    )
    group by user_id