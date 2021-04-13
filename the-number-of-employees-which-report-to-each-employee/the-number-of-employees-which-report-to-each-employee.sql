/* Write your PL/SQL query statement below */
select e.reports_to employee_id , s.name, count(e.age) as reports_count, round(avg(e.age),0) as average_age
from employees e left join employees s on e.reports_to = s.employee_id
where e.reports_to is not null
group by e.reports_to, s.name
order by e.reports_to