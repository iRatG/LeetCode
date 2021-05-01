/* Write your PL/SQL query statement below */
with 
top_ans as
(select question_id, cnt, dense_rank() over( order by cnt desc) rn
    from (
            select question_id,count(1) cnt
                from survey_log
                where action = 'answer'
            group by question_id
            )
)
select question_id as survey_log from top_ans where rn = 1