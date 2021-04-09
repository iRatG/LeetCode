/* Write your PL/SQL query statement below */
with a1 as (
select parent_id, count(*) cnt
from (
    select
        distinct sub_id, parent_id
        from submissions
        where parent_id is not null
)
group by parent_id
    )
    
    select distinct a.sub_id post_id,
    coalesce(a1.cnt,0) number_of_comments
    from submissions a
     left join a1 on 
        a.sub_id = a1.parent_id
    where a.parent_id is  null
    order by a.sub_id