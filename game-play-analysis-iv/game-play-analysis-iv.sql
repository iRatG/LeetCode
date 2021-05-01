/* Write your PL/SQL query statement below */
with cnt as (select count(distinct player_id) cntp from activity)
,

cntn as (
select count(a1.player_id) cnt_n 
from (
select 
player_id, 
case when 
lag(event_date,1) over  (partition by player_id order by event_date) is null
and 
to_date(lead(event_date,1) over (partition by player_id order by event_date),'yyyy-mm-dd') -to_date(event_date,'yyyy-mm-dd') = 1

then 1 else 0 end chk
from activity
) a1
 where a1.chk = 1
)

select round(cnt_n / cnt.cntp,2) as fraction
from cntn
left join cnt
on 1=1
