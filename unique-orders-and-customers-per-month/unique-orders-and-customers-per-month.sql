/* Write your PL/SQL query statement below */
/*
select  month, 
        sum(case when order_count is null then 0 else order_count end) order_count,
        count(distinct customer_id) customer_count

from (
    select 
        to_char(order_date,'yyyy-mm') month
        ,customer_id
        ,count(distinct order_id) order_count
        ,sum(invoice) sumi
    from orders 
    --where invoice > 20
group by to_char(order_date,'yyyy-mm'), customer_id
)
where sumi > 20
group by month
*/

select 
        to_char(order_date,'yyyy-mm') month
        ,count(distinct order_id) order_count
        ,count(distinct customer_id) customer_count
        
    from orders 
    where invoice > 20
group by to_char(order_date,'yyyy-mm')