<h2>614. Second Degree Follower</h2><h3>Medium</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p>In facebook, there is a <code>follow</code> table with two columns: <b>followee</b>, <b>follower</b>.</p>

<p>Please write a sql query to get the amount of each follower’s follower if he/she has one.</p>

<p>For example:</p>

<pre>+-------------+------------+
| followee    | follower   |
+-------------+------------+
|     A       |     B      |
|     B       |     C      |
|     B       |     D      |
|     D       |     E      |
+-------------+------------+
</pre>
should output:

<pre>+-------------+------------+
| follower    | num        |
+-------------+------------+
|     B       |  2         |
|     D       |  1         |
+-------------+------------+
</pre>
<b>Explaination:</b><br>
Both B and D exist in the follower list, when as a followee, B's follower is C and D, and D's follower is E. A does not exist in follower list.
<p>&nbsp;</p>

<p>&nbsp;</p>
<b>Note:</b><br>
Followee would not follow himself/herself in all cases.<br>
Please display the result in follower's alphabet order.
<p>&nbsp;</p>
</div>