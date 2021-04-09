/* Write your PL/SQL query statement below */
/*
select 
id,
case when month='Jan' 
        then revenue else null end Jan_Revenue,
case when month='Feb' 
        then revenue else null end Feb_Revenue ,   
case when month='Mar' 
        then revenue else null end Mar_Revenue , 
case when month='Apr' 
        then revenue else null end Apr_Revenue , 
case when month='May' 
        then revenue else null end May_Revenue , 
case when month='Jun' 
        then revenue else null end Jun_Revenue  ,
case when month='Jul' 
        then revenue else null end Jul_Revenue  ,
case when month='Aug' 
        then revenue else null end Aug_Revenue  ,
case when month='Sep' 
        then revenue else null end Sep_Revenue  ,
case when month='Oct' 
        then revenue else null end Oct_Revenue  ,
case when month='Nov' 
        then revenue else null end Nov_Revenue  ,
case when month='Dec' 
        then revenue else null end Dec_Revenue  
from 
(
    select id , month , sum(revenue) as revenue from department group by id, month
)
*/
select
id,
sum(case when month = 'Jan' then revenue end) as Jan_Revenue,
sum(case when month = 'Feb' then revenue end) as Feb_Revenue,
sum(case when month = 'Mar' then revenue end) as Mar_Revenue,
sum(case when month = 'Apr' then revenue end) as Apr_Revenue,
sum(case when month = 'May' then revenue end) as May_Revenue,
sum(case when month = 'Jun' then revenue end) as Jun_Revenue,
sum(case when month = 'Jul' then revenue end) as Jul_Revenue,
sum(case when month = 'Aug' then revenue end) as Aug_Revenue,
sum(case when month = 'Sep' then revenue end) as Sep_Revenue,
sum(case when month = 'Oct' then revenue end) as Oct_Revenue,
sum(case when month = 'Nov' then revenue end) as Nov_Revenue,
sum(case when month = 'Dec' then revenue end) as Dec_Revenue
from Department
group by id