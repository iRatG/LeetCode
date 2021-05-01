/* Write your PL/SQL query statement below */
/* Write your PL/SQL query statement below */

select department, name as employee, salary from (
select e.departmentId, d.name as department,
e.name, salary,
dense_rank() over (partition by departmentId order by salary desc) rnk
from employee e
inner join department d
on d.id = e.departmentid
    ) 
    where rnk=1