/* Write your PL/SQL query statement below */
SELECT name FROM Vote v
    INNER JOIN Candidate c
ON c.id = v.candidateid
group by name
having count(*) = 
( 
    SELECT MAX(CNT) FROM
    ( SELECT COUNT(*) cnt FROM Vote
        group by candidateid)
)