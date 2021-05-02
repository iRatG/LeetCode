/* Write your PL/SQL query statement below */
select transaction_id from (
select 
transaction_id,
DENSE_RANK() OVER (PARTITION BY to_char(day,'yyyy-mm-dd') ORDER BY amount desc) rank
from transactions
    )
    where rank=1
    order by 1