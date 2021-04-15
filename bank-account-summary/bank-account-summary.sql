/* Write your PL/SQL query statement below */
select 
u.user_id,
u.user_name,
u.credit -  nvl(t.amount,0) + nvl(t2.amount,0) as credit,
case when u.credit -  nvl(t.amount,0) + nvl(t2.amount,0) <0 then  'Yes' else 'No' end credit_limit_breached 
    from users u

left join (select paid_by   , sum(amount) as amount from transactions group by paid_by  ) t
    on u.user_id = t.paid_by

left join (select   paid_to , sum(amount) as amount from transactions  group by   paid_to) t2
    on u.user_id = t2.paid_to

