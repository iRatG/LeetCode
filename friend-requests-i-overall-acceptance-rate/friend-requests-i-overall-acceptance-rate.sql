/* Write your PL/SQL query statement below */
--FriendRequest
--RequestAccepted
/*
with 

fr as
(select 
  
 count(*) cnt 
 from friendrequest) ,

ra as
(select count(*) cnt from (
select  
distinct requester_id ,  accepter_id  
    from requestaccepted   ))



select coalesce(round (ra.cnt / nullif(fr.cnt,0) , 2) , 0.0) as accept_rate
from fr left join ra 
on  1=1

    */
    /*
select acccount/sendcnt as "accept_rate"
from
(
select count(1) as sendcnt, 1 as id from
(select distinct sender_id, send_to_id from friendrequest)) a
join
(select count(1) as acccount, 1 as id from
(select distinct requester_id, accepter_id from RequestAccepted))b
on
(a.id = b.id)
*/
/*
with cte as (select distinct requester_id, accepter_id, 'accept' as acceptance, 0 as total
from request_accepted as c
union all
select distinct sender_id, send_to_id, '0' as acceptance, 'total' as total
from friend_request as c)

select ifnull(round(sum(case when acceptance='accept' then 1 else 0 end)/sum(case when total='total' then 1 else 0 end),2),0) as Total
from cte;
*/
select   round(count(distinct requester_id || accepter_id) 
 / case when count(distinct sender_id || send_to_id) = 0 then 1 else 
             count(distinct sender_id || send_to_id)  end,2) as accept_rate
from FriendRequest t1, RequestAccepted t2
