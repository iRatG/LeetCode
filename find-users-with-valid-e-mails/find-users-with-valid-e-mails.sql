/* Write your PL/SQL query statement below */
select * from users
where regexp_like(mail, '^[a-z]+[a-z0-9_\.\-]*@leetcode.com', 'i')