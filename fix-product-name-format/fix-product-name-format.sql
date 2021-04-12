/* Write your PL/SQL query statement below */
select 
lower (trim(product_name)) as product_name,
to_char(sale_date,'yyyy-mm') as sale_date,
count(*) total
from sales
group by
lower (trim(product_name)),
to_char(sale_date,'yyyy-mm')
order by 1,2