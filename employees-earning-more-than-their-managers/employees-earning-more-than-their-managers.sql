/* Write your PL/SQL query statement below */
select e.name  as employee
    from employee e
        left join employee m
        on e.managerid = m.Id
        where e.salary > m.salary