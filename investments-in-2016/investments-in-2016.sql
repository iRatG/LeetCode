/* Write your PL/SQL query statement below */
with ex as (
select a.pid 
from insurance a inner join insurance b
on  a.lat = b.lat and a.lon = b.lon and a.pid != b.pid
)

select sum(tiv_2016) tiv_2016 from (
select distinct
a.pid,a.tiv_2016
from insurance a
inner join insurance b
on a.pid != b.pid
and (a.lat != b.lat and a.lon != b.lon)
and a.tiv_2015 = b.tiv_2015
where a.pid not in (select pid from ex)

    )