/* Write your PL/SQL query statement below */
select distinct num as ConsecutiveNums from (
select 

LAG (Num,1) over ( order by id) AS prev_num,
num,
Lead (Num,1) over ( order by id) as lead_num
  from Logs
    )
    where prev_num = num and num = lead_num