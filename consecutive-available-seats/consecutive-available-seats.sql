/* Write your PL/SQL query statement below */
/*
select seat_id
from (
    select 
        seat_id,
        coalesce(LAG (seat_id,1) over (ORDER BY seat_id),1) AS prev_seat_id,
        free,
        coalesce(LAG (free,1) over (ORDER BY seat_id),0) AS prev_free
            from cinema
    )
    where free = prev_free
    or (free = 1 and ( prev_free = 0) and ( seat_id = prev_seat_id + 1 ) )
*/
select distinct a.seat_id
from cinema a join
cinema b on a.seat_id = b.seat_id + 1
or a.seat_id = b.seat_id-1
where a.free = 1 and b.free = 1
order by a.seat_id;

