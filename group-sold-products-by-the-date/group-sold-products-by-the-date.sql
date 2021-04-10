/* Write your PL/SQL query statement below */
SELECT 
to_char(sell_date,'yyyy-mm-dd') as sell_date,
count(product) num_sold,
LISTAGG( product , ',') WITHIN GROUP (ORDER BY sell_date) "Products"
FROM (select distinct * from Activities)
group by sell_date
;