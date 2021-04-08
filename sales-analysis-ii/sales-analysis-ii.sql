with s8 as (
select product_id
    from product
        where product_name like 'S8'
),

iphone as 
(
select product_id
    from product
        where product_name like 'iPhone'
),
biphone as (
select buyer_id 
                    from sales
                        where product_id   in (select * from iphone)
                      )  
                        

select distinct buyer_id from (
                select buyer_id,product_id
                    from sales
                        where buyer_id not in (select * from biphone) 
) where product_id in (select * from s8)