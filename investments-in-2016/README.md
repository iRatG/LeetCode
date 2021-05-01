<h2>585. Investments in 2016</h2><h3>Medium</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p>Write a query to print the sum of all total investment values in 2016 (<b>TIV_2016</b>), to a scale of 2 decimal places, for all policy holders who meet the following criteria:</p>

<ol>
	<li>Have the same <b>TIV_2015</b> value as one or more other policyholders.</li>
	<li>Are not located in the same city as any other policyholder (i.e.: the (latitude, longitude) attribute pairs must be unique).</li>
</ol>

<p><b>Input Format:</b><br>
The <b><i>insurance</i></b> table is described as follows:</p>

<pre>| Column Name | Type          |
|-------------|---------------|
| PID         | INTEGER(11)   |
| TIV_2015    | NUMERIC(15,2) |
| TIV_2016    | NUMERIC(15,2) |
| LAT         | NUMERIC(5,2)  |
| LON         | NUMERIC(5,2)  |
</pre>

<p>where <b>PID</b> is the policyholder's policy ID, <b>TIV_2015</b> is the total investment value in 2015, <b>TIV_2016</b> is the total investment value in 2016, <b>LAT</b> is the latitude of the policy holder's city, and <b>LON</b> is the longitude of the policy holder's city.</p>

<p><b>Sample Input</b></p>

<pre>| PID | TIV_2015 | TIV_2016 | LAT | LON |
|-----|----------|----------|-----|-----|
| 1   | 10       | 5        | 10  | 10  |
| 2   | 20       | 20       | 20  | 20  |
| 3   | 10       | 30       | 20  | 20  |
| 4   | 10       | 40       | 40  | 40  |
</pre>

<p><b>Sample Output</b></p>

<pre>| TIV_2016 |
|----------|
| 45.00    |
</pre>

<p><b>Explanation</b></p>

<pre>The first record in the table, like the last record, meets both of the two criteria.
The <b>TIV_2015</b> value '10' is as the same as the third and forth record, and its location unique.

The second record does not meet any of the two criteria. Its <b>TIV_2015</b> is not like any other policyholders.

And its location is the same with the third record, which makes the third record fail, too.

So, the result is the sum of <b>TIV_2016</b> of the first and last record, which is 45.</pre>
</div>