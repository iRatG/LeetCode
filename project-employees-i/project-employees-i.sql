/* Write your PL/SQL query statement below */
/*
select p.project_id, round(avg(cast(e.experience_years as decimal)),5) as average_years
    from project p left join employee e
    on p.employee_id = e.employee_id
        group by p.project_id
  */      
        --cast(experience_years as decimal)

select project_id,round(avg(experience_years),2) average_years
from
employee e join project p
on e.employee_id = p.employee_id
group by project_id