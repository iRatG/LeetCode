select session_id from playback 
where session_id not in (
select 
p.session_id
from ads a
left join playback p
on a.customer_id = p.customer_id
and a.timestamp >= p.start_time and a.timestamp <= p.end_time
    )