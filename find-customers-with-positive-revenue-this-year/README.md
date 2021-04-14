<h2>1821. Find Customers With Positive Revenue this Year</h2><h3>Easy</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__3Su4"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p>Table: <code>Customers</code></p>

<pre>+--------------+------+
| Column Name  | Type |
+--------------+------+
| customer_id  | int  |
| year         | int  |
| revenue      | int  |
+--------------+------+
(customer_id, year) is the primary key for this table.
This table contains the customer ID and the revenue of customers in different years.
Note that this revenue can be negative.
</pre>

<p>&nbsp;</p>

<p>Write an SQL query to report the customers with <strong>postive revenue</strong> in the year 2021.</p>

<p>Return the result table in <strong>any order</strong>.</p>

<p>The query result format is in the following example:</p>

<p>&nbsp;</p>

<pre>Customers
+-------------+------+---------+
| customer_id | year | revenue |
+-------------+------+---------+
| 1           | 2018 | 50      |
| 1           | 2021 | 30      |
| 1           | 2020 | 70      |
| 2           | 2021 | -50     |
| 3           | 2018 | 10      |
| 3           | 2016 | 50      |
| 4           | 2021 | 20      |
+-------------+------+---------+

Result table:
+-------------+
| customer_id |
+-------------+
| 1           |
| 4           |
+-------------+

Customer 1 has revenue equal to 50 in year 2021.
Customer 2 has revenue equal to -50 in year 2021.
Customer 3 has no revenue in year 2021.
Customer 4 has revenue equal to 20 in year 2021.
Thus only customers 1 and 4 have postive revenue in year 2021.</pre></div>