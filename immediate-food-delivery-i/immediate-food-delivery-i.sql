/* Write your PL/SQL query statement below */

select 
round(sum(immediat) / nullif(count(*),0) * 100,2) immediate_percentage 
from (
                select 
                case when 
                        order_date = customer_pref_delivery_date
                        then 1 else 0
                        end immediat
                from delivery
)