<h2>580. Count Student Number in Departments</h2><h3>Medium</h3><hr><div class="sql-schema-wrapper__3VBi"><a class="sql-schema-link__3cEg">SQL Schema<svg viewBox="0 0 24 24" width="1em" height="1em" class="icon__1Md2"><path fill-rule="evenodd" d="M10 6L8.59 7.41 13.17 12l-4.58 4.59L10 18l6-6z"></path></svg></a></div><div><p>A university uses 2 data tables, <b><i>student</i></b> and <b><i>department</i></b>, to store data about its students and the departments associated with each major.</p>

<p>Write a query to print the respective department name and number of students majoring in each department for all departments in the <b><i>department</i></b> table (even ones with no current students).</p>

<p>Sort your results by descending number of students; if two or more departments have the same number of students, then sort those departments alphabetically by department name.</p>

<p>The <b><i>student</i></b> is described as follow:</p>

<pre>| Column Name  | Type      |
|--------------|-----------|
| student_id   | Integer   |
| student_name | String    |
| gender       | Character |
| dept_id      | Integer   |
</pre>

<p>where student_id is the student's ID number, student_name is the student's name, gender is their gender, and dept_id is the department ID associated with their declared major.</p>

<p>And the <b><i>department</i></b> table is described as below:</p>

<pre>| Column Name | Type    |
|-------------|---------|
| dept_id     | Integer |
| dept_name   | String  |
</pre>

<p>where dept_id is the department's ID number and dept_name is the department name.</p>

<p>Here is an example <b>input</b>:<br>
<b><i>student</i></b> table:</p>

<pre>| student_id | student_name | gender | dept_id |
|------------|--------------|--------|---------|
| 1          | Jack         | M      | 1       |
| 2          | Jane         | F      | 1       |
| 3          | Mark         | M      | 2       |
</pre>

<p><b><i>department</i></b> table:</p>

<pre>| dept_id | dept_name   |
|---------|-------------|
| 1       | Engineering |
| 2       | Science     |
| 3       | Law         |
</pre>

<p>The <b>Output</b> should be:</p>

<pre>| dept_name   | student_number |
|-------------|----------------|
| Engineering | 2              |
| Science     | 1              |
| Law         | 0              |
</pre>
</div>