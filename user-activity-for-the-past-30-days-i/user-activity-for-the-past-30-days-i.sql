/* Write your PL/SQL query statement below */

select to_char(day,'yyyy-mm-dd') as day , active_users 
    from (
        select to_date(activity_date,'yyyy-mm-dd') day,
        count(distinct user_id) active_users
        from activity
            where activity_date  between to_date('2019-07-27','yyyy-mm-dd')-29
                                    and  to_date('2019-07-27','yyyy-mm-dd')  

        group by activity_date  
        order by activity_date
    )