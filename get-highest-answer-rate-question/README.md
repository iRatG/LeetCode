<h2>578. Get Highest Answer Rate Question</h2><h3>Medium</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p>Get the highest answer rate question from a table <code>survey_log</code> with these columns: <b>id</b>, <b>action</b>, <b>question_id</b>, <b>answer_id</b>, <b>q_num</b>, <b>timestamp</b>.</p>

<p>id means user id; action has these kind of values: "show", "answer", "skip"; answer_id is not null when action column is "answer", while is null for "show" and "skip"; q_num is the numeral order of the question in current session.</p>

<p>Write a sql query to identify the question which has the highest answer rate.</p>

<p><b>Example:</b></p>

<pre><b>Input:</b>
+------+-----------+--------------+------------+-----------+------------+
| id   | action    | question_id  | answer_id  | q_num     | timestamp  |
+------+-----------+--------------+------------+-----------+------------+
| 5    | show      | 285          | null       | 1         | 123        |
| 5    | answer    | 285          | 124124     | 1         | 124        |
| 5    | show      | 369          | null       | 2         | 125        |
| 5    | skip      | 369          | null       | 2         | 126        |
+------+-----------+--------------+------------+-----------+------------+
<b>Output:</b>
+-------------+
| survey_log  |
+-------------+
|    285      |
+-------------+
<b>Explanation:</b>
question 285 has answer rate 1/1, while question 369 has 0/1 answer rate, so output 285.
</pre>

<p>&nbsp;</p>

<p><b>Note:</b> The highest answer rate meaning is: answer number's ratio in show number in the same question.</p>
</div>