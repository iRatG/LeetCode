/* Write your PL/SQL query statement below */
select 
w.name as warehouse_name,
sum(p.width*p.length*p.height*units) as volume
from 
warehouse w
inner join products p
on w.product_id = p.product_id
group by w.name