/* Write your PL/SQL query statement below */
/*
select 
player_id, 
to_char(event_date,'yyyy-mm-dd') event_date,

games_played + 
coalesce(lag (games_played,1) over (partition by player_id ORDER BY player_id, event_date) 
,0) AS  games_played_so_far

from activity
  order by player_id , event_date 
*/
/*
select 
a.player_id , 
to_char(a.event_date,'yyyy-mm-dd') as event_date,
--a.games_played , e.games_played
sum(coalesce(e.games_played,0) + coalesce(e.games_played,0)) as games_played_so_far
from activity a left join activity e
    on  a.player_id  = e.player_id 
    and a.event_date > e.event_date
group by a.player_id , a.event_date
--where a.player_id = 1
order by 1 , 2
*/
select player_id, 
to_char(event_date,'yyyy-mm-dd') as event_date,
SUM(games_played) OVER(PARTITION by player_id ORDER BY event_date) games_played_so_far from Activity order by player_id, event_date;