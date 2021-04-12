/* Write your PL/SQL query statement below */
select s.seller_name
from seller s left join   orders o on s.seller_id = o.seller_id
where s.seller_id not in 
(select s.seller_id  from 
 seller s left join
 orders o on s.seller_id = o.seller_id where to_char(o.sale_date,'yyyy') in (2020))
order by 1