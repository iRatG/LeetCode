/* Write your PL/SQL query statement below */
/*
select 
distinct title
from 
tvprogram t left join content c
on c.content_id = t.content_id

where program_date between to_date('2020-06-01','yyyy-mm-dd') and to_date('2020-07-01','yyyy-mm-dd')-1
and  c.kids_content = 'Y' and c.content_type = 'Movies'
*/
Select distinct c.title from TVProgram t 
left join Content c
on t.content_id = c.content_id
where to_char(program_date,'yyyy-mm')='2020-06' and Kids_content ='Y' and content_type='Movies'