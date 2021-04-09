/* Write your PL/SQL query statement below */
with a1 as(
select '[0-5>' as bin from dual
    union all
select '[5-10>'   as bin from dual
    union all
select '[10-15>' as bin from dual
    union all
select '15 or more' as bin  from dual
)

select a1.bin , nvl(a2.total,0) as total
from a1 left join (
select 
case    when (duration / 60)  between 0 and 5 then  '[0-5>'   
        when (duration / 60)  between 5 and 10 then '[5-10>'   
        when (duration / 60 ) between 10 and 15 then '[10-15>' 
        when (duration / 60 ) >= 15 then '15 or more'
        end
        as bin
,count(*)        as total
from sessions 
group by
case    when duration / 60  between 0 and 5 then  '[0-5>'    
        when duration / 60  between 5 and 10 then '[5-10>'   
        when duration / 60  between 10 and 15 then '[10-15>' 
        when duration / 60  >= 15 then '15 or more'
end
) a2
on a1.bin = a2.bin