/* Write your PL/SQL query statement below */
select e.employee_id, a.team_size from employee e
left join (
select team_id, count(*) team_size from employee group by team_id
) a
on e.team_id = a.team_id