/* Write your PL/SQL query statement below */
select cn.player_id, pl.player_name,
sum(cnt) grand_slams_count
from (
select 
wimbledon player_id, count(*) cnt
from championships
group by wimbledon

union all

select fr_open player_id, count(*) cnt
from championships
group by fr_open

union all

select us_open player_id, count(*) cnt
from championships
group by us_open

union all

select au_open player_id, count(*) cnt
from championships
group by au_open
    ) cn
    left join players pl
    on pl.player_id = cn.player_id
    group by cn.player_id, pl.player_name