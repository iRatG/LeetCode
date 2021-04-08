/* Write your PL/SQL query statement below */
select a.player_id, a.device_id from activity a inner join 
    (    select player_id , min(event_date) as event_date 
            from activity group by player_id) md
                on  a.player_id = md.player_id 
                and a.event_date = md.event_date