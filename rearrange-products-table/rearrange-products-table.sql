/* Write your PL/SQL query statement below */
/*select
product_id,
case when store1 then 'store1' 
     when store2 then 'store2' 
     when store3 then 'store3'
     else null end store
from products  
*/
SELECT 
    product_id,
    store,
    price
FROM Products
UNPIVOT EXCLUDE NULLS
(
	price
	FOR store in (store1 AS 'store1',store2 AS 'store2',store3 AS 'store3')
);
