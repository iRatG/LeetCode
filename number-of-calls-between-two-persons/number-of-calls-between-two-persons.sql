/* Write your PL/SQL query statement below */
/*select 
c1.from_id ,
c1.to_id
,nvl(c1.duration,0) + nvl(c2.duration,0) as total_duration
,case 
    when c1.from_id = c2.to_id and c1.to_id = c2.from_id  and c1.from_id < c1.to_id then c1.from_id + c1.to_id
    when c2.from_id = c1.to_id and c2.to_id = c1.from_id  and c2.from_id < c2.to_id then c2.from_id + c2.to_id
    else c1.from_id + c1.to_id
end chec
from calls c1
left join calls c2
on c1.from_id = c2.to_id and c1.to_id = c2.from_id
*/
SELECT 
CASE 
    WHEN from_id < to_id THEN from_id
    ELSE to_id
    END AS person1,
    
CASE 
    WHEN from_id < to_id THEN to_id
    ELSE from_id
    END AS person2,
    
    COUNT(*) AS call_count,
    SUM(duration) AS total_duration
    
FROM Calls

GROUP BY 
CASE 
    WHEN from_id < to_id THEN from_id
    ELSE to_id
    END  ,
    
CASE 
    WHEN from_id < to_id THEN to_id
    ELSE from_id
    END  
