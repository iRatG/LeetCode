/* Write your PL/SQL query statement below */
/*
select distinct account_id from (
select 
l.account_id,
case  when (l.login >= m.login and l.login <= m.logout
                     or m.login >= l.login and m.login <= l.logout)
        then 1
        
    else 0
    end check_
from loginfo l left join  loginfo m
on l.account_id = m.account_id and l.ip_address != m.ip_address
    )
    where check_ = 1
    */
    
    select 
    distinct
    l.account_id

from loginfo l  left join  loginfo m 
on l.account_id = m.account_id and l.ip_address != m.ip_address
where  (l.login >= m.login and l.login <= m.logout
                     or m.login >= l.login and m.login <= l.logout)