/* Write your PL/SQL query statement below */

with a1 as (
select 
            customer_id,
            product_id, 
            dense_rank() over  (partition by customer_id , product_id order by order_date) as rn
        from
            orders
)

,a2 as (
select 
    customer_id,
        max(rn) rn
    from a1
group by customer_id
    )

,a3 as (
select a1.customer_id , a1.product_id 
    from a1
    inner join a2 
    on a1.customer_id = a2.customer_id and a1.rn = a2.rn
)


select 
o.customer_id,
o.product_id,
p.product_name
from a3 o
left join products p
on o.product_id = p.product_id