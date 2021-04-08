/* Write your PL/SQL query statement below */
select min(shortest) shortest from ( 
select 
abs(x - LAG (x,1) over (ORDER BY x) )
AS shortest
from point
)