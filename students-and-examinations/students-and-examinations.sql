/* Write your PL/SQL query statement below */
/*
select 
e.student_id,
st.student_name,
e.subject_name,
count(*) attended_exams

from students st
    full join  examinations e
        on e.student_id = st.student_id

group by e.student_id, st.student_name, e.subject_name
order by e.student_id, e.subject_name
*/

select 
s.student_id , s.student_name , su.subject_name,
sum(case when e.subject_name is null then 0 else 1 end) attended_exams
from students s
    full join subjects su
on 1=1

left join examinations e
    on e.student_id = s.student_id 
    and su.subject_name =  e.subject_name

where   (select count(*) from examinations) > 0 and (select count(*) from subjects) > 0 and (select count(student_id) from students) > 0

group by s.student_id, s.student_name, su.subject_name
order by s.student_id, su.subject_name
