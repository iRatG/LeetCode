/* Write your PL/SQL query statement below */
select p.product_name , o.unit from 
(
select 
 product_id,
sum(unit) unit
    from orders o 
       
    where order_date between to_date('2020-02-01','yyyy-mm-dd') and to_date('2020-03-01','yyyy-mm-dd')-1
group by  product_id
having sum(unit)>=100
    ) o
    left join products p
    on p.product_id = o.product_id