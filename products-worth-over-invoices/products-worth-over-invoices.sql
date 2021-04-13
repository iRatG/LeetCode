/* Write your PL/SQL query statement below */
select 
p.name,
sum(rest) rest,
sum(paid) paid,
sum(canceled) canceled,
sum(refunded) refunded
from
    invoice i left join product p
    on i.product_id = p.product_id
group by p.name
order by 1