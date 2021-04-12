/* Write your PL/SQL query statement below */

select machine_id, 
round(avg(diff_timestamp),3) processing_time
from 
(select 
    machine_id , process_id,activity_type,
    timestamp - LAG (timestamp,1) over (partition by machine_id , process_id ORDER BY machine_id , process_id,timestamp) 
    AS diff_timestamp
 from activity)
where activity_type='end'
group by  machine_id


/*
with a as (
select 
    machine_id,
    count(distinct process_id) cnt_dist
    
    from activity
    group by machine_id
    ),
    
b as (    
select machine_id, sum(time) sum_time
    from (
        select machine_id,activity_type,
        timestamp   - LAG (timestamp,1) over (ORDER BY machine_id , process_id)  time
        from activity
    )
where activity_type='end'
group by machine_id
)

select a.machine_id ,
round(b.sum_time / cnt_dist,3) processing_time
from a left join b
on a.machine_id = b.machine_id
*/
/*
select machine_id,round(avg(diff),3) as processing_time from 
(
select machine_id,process_id,activity_type, 
timestamp-(lag(timestamp,1) over (partition by machine_id,process_id order by machine_id,process_id,timestamp)) as diff
from 
activity
)A
 where activity_type='end' 
group by machine_id
*/