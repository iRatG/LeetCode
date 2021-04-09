/* Write your PL/SQL query statement below */
with a1 as (
select distinct
ad_id,
    sum(case when action='Clicked' then 1 else 0 end) over (partition by ad_id) total_clicks,
    sum(case when action='Viewed' then 1 else 0 end) over(partition by ad_id) total_views
from ads
)

select  
ad_id 

,case when total_clicks + total_views = 0 then  0
            else   round(total_clicks / (total_clicks + total_views) * 100   ,2)
    end ctr
from a1    
order by 2 desc ,1