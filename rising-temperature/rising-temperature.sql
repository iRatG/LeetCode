/* Write your PL/SQL query statement below */
select yesterday.id from weather today
inner join weather yesterday
on today.recorddate = yesterday.recorddate-1
and today.temperature < yesterday.temperature
