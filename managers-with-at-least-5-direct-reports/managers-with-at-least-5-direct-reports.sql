/* Write your PL/SQL query statement below */
with a1 as 
(select el.managerid
from employee el  
where el.managerid is not null
group by el.managerid
having count(el.managerid) > 4)

select  name from 
employee where id in (select * from a1)