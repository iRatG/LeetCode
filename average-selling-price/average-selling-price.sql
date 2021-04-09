/* Write your PL/SQL query statement below */
select t.product_id , round(t.price / t1.sum_,2) as average_price from 

( 
    select 
        p.product_id,
        sum(p.price * u.units) price
    from 
        prices p 
    left join unitssold u
    on p.product_id = u.product_id and
        u.purchase_date between p.start_date and p.end_date
    group by p.product_id
) t
left join (select product_id,sum(units) sum_ from unitssold group by product_id) t1
        on t.product_id = t1.product_id