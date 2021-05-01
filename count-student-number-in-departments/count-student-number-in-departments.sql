/* Write your PL/SQL query statement below */
select 
d.dept_name,
sum(case when student_id is not null then 1 else 0 end ) as student_number
from department d
left join student s
on d.dept_id = s.dept_id
group by d.dept_name
order by 2 desc,1