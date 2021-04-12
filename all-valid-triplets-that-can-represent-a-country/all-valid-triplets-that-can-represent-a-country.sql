/* Write your PL/SQL query statement below */
select 
/*
a.student_id, a.student_name,
b.student_id, b.student_name,
c.student_id, c.student_name
*/
a.student_name member_a,
b.student_name member_b,
c.student_name member_c
from 
schoola a
cross join schoolb b
cross join schoolc c
where 
(a.student_name != b.student_name and b.student_name != c.student_name and a.student_name != c.student_name)
and
(a.student_id != b.student_id and b.student_id != c.student_id and a.student_id != c.student_id)