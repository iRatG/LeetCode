/* Write your PL/SQL query statement below */
select product_id , sum(quantity) as total_quantity
from sales
group by product_id