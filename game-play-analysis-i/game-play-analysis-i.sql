/* Write your PL/SQL query statement below */
select player_id, to_char(MIN(event_date),'yyyy-mm-dd') as first_login 
from Activity 
GROUP BY player_id