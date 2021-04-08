/* Write your PL/SQL query statement below */
with snot as (
select product_id 
from sales
    where sale_date not between to_date('2019-01-01','yyyy-mm-dd') and to_date('2019-03-31','yyyy-mm-dd')
    ),
    
 s as (
select product_id 
from sales
    where sale_date  between to_date('2019-01-01','yyyy-mm-dd') and to_date('2019-03-31','yyyy-mm-dd')
    )

select s1.product_id  , s.product_name from 
(select * from s minus select * from snot) s1
left join product s on s.product_id = s1.product_id
   