/* Write your PL/SQL query statement below */

with a1 as 
(
select  project_id ,  
        count(project_id)  cnt
    from project
    group by project_id
),

a2 as (
select max(cnt) from a1
)

select project_id from a1 where cnt in (select * from a2)