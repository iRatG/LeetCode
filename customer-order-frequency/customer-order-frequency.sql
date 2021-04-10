/* Write your PL/SQL query statement below */
select distinct customer_id , name 
from (
    select 
        c.customer_id , c.name,
        case    when To_char(order_date,'yyyy-mm') = '2020-06' then 'june'
                when to_char(o.order_date,'yyyy-mm') = '2020-07' then 'july'
        end month
        ,sum(o.quantity * p.price) quat_price

    from orders  o
            left join product p
                on o.product_id = p.product_id
            left join customers c
                on c.customer_id = o.customer_id

    where       To_char(order_date,'yyyy-mm') = '2020-06' 
            or  to_char(o.order_date,'yyyy-mm') = '2020-07'

    group by 
        c.customer_id , c.name,
        case    when To_char(order_date,'yyyy-mm') = '2020-06' then 'june'
                when to_char(o.order_date,'yyyy-mm') = '2020-07' then 'july'
        end
)
where quat_price >= 100
group by customer_id , name
having (count(customer_id)) >1