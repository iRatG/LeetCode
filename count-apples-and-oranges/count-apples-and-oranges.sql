/* Write your PL/SQL query statement below */
select
sum(app) as apple_count,
sum(ora) as orange_count
 from (
select 
b.box_id,
b.chest_id,
coalesce(b.apple_count,0) + coalesce(c.apple_count,0) as app,
coalesce(b.orange_count,0) + coalesce(c.orange_count,0) as ora
from boxes b
left join 
chests c
on b.chest_id = c.chest_id
     )