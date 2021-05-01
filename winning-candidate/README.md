<h2>574. Winning Candidate</h2><h3>Medium</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p>Table: <code>Candidate</code></p>

<pre>+-----+---------+
| id  | Name    |
+-----+---------+
| 1   | A       |
| 2   | B       |
| 3   | C       |
| 4   | D       |
| 5   | E       |
+-----+---------+  
</pre>

<p>Table: <code>Vote</code></p>

<pre>+-----+--------------+
| id  | CandidateId  |
+-----+--------------+
| 1   |     2        |
| 2   |     4        |
| 3   |     3        |
| 4   |     2        |
| 5   |     5        |
+-----+--------------+
id is the auto-increment primary key,
CandidateId is the id appeared in Candidate table.
</pre>

<p>Write a sql to find the name of the winning candidate, the above example will return the winner <code>B</code>.</p>

<pre>+------+
| Name |
+------+
| B    |
+------+
</pre>

<p><b>Notes:</b></p>

<ol>
	<li>You may assume <b>there is no tie</b>, in other words there will be <b>only one</b> winning candidate.</li>
</ol>

<p>&nbsp;</p>
</div>