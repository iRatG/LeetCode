/* Write your PL/SQL query statement below */
with a as (
select seller_id , sum(price) sum_
from sales
    group by seller_id
),

b as (select max(sum_) as max_ from a)

select seller_id from a where sum_ in (select * from b)
