/* Write your PL/SQL query statement below */
-- salesperson, company, orders

select s.name from salesperson s where s.sales_id not in (

select distinct o.sales_id from orders o  join company c on o.com_id = c.com_id and c.name='RED'
)