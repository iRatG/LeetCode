/* Write your PL/SQL query statement below */
select  extra as report_reason ,
        count(distinct post_id) as report_count
        from actions
        where action_date = to_date('2019-07-05','yyyy-mm-dd')-1
            and extra is not null
            and action = 'report'
        group by extra