/* Write your PL/SQL query statement below */



select 

        round(coalesce(sum(case when session_id is not null then 1 else 0 end) / nullif(count(distinct user_id),0),0) ,2)
   
        average_sessions_per_user
from (
select 
    distinct session_id, user_id
    from activity
        where    activity_date between to_date('2019-07-27','yyyy-mm-dd')-29 and to_date('2019-07-27','yyyy-mm-dd')
)


/*
with a1 as (
select user_id
    from activity
        where           activity_date between to_date('2019-07-27','yyyy-mm-dd')-30 and to_date('2019-07-27','yyyy-mm-dd')
                 and    activity_type = 'open_session'
)

select   
round(coalesce(sum(case when user_id is not null then 1 else 0 end) / nullif(count(distinct user_id),0),0) ,2)
 average_sessions_per_user
from a1
*/