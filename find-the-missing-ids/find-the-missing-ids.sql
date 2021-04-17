/* Write your PL/SQL query statement below */
 
select customer_id as "ids" 
from (
        SELECT LEVEL as customer_id
        FROM DUAL CONNECT BY   lEVEL <= (select max(customer_id) from customers)
        ) 
where customer_id not in (select customer_id from customers)
order by 1
 
/*
SELECT rownum AS "ids" FROM dual CONNECT BY rownum <= (select max(customer_id) from customers)
minus
select customer_id from customers
*/