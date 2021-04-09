/* Write your PL/SQL query statement below */

select query_name ,
round(sum(relate) / count(query_name),2) quality,
round(sum(poor_query) / count(query_name) * 100,2) poor_query_percentage
from (
    select 
        query_name ,
        case when rating < 3 then 1 
                else 0 end poor_query,

        case when position > 0
                then rating/position
                else 0 
        end relate        

    from queries
    )
group by query_name