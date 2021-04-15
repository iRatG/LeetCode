/* Write your PL/SQL query statement below */
select product_name , product_id, order_id ,order_date
from (
select   p.product_name
        ,p.product_id
        ,o.order_id
        ,to_char(o.order_date,'yyyy-mm-dd') order_date,
         DENSE_RANK() OVER (PARTITION BY p.product_name, p.product_id    ORDER BY o.order_date desc) rn
from orders o 
    left join products p
        on p.product_id = o.product_id
    order by 
     p.product_name
        ,p.product_id
        ,o.order_id
    )where rn=1