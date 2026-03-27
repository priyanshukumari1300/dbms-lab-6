SQL Lab 6: AS and JOIN

Objective:
To understand the use of AS (alias) and different types of JOIN in SQL.

Tables:
Students (student_id, name, course_id)
Courses (course_id, course_name)

AS (Alias):
SELECT name AS student_name FROM Students;

INNER JOIN:
SELECT s.name, c.course_name
FROM Students s
INNER JOIN Courses c
ON s.course_id = c.course_id;

LEFT JOIN:
SELECT s.name, c.course_name
FROM Students s
LEFT JOIN Courses c
ON s.course_id = c.course_id;

RIGHT JOIN:
SELECT s.name, c.course_name
FROM Students s
RIGHT JOIN Courses c
ON s.course_id = c.course_id;

Conclusion:
AS is used for renaming, and JOIN is used to combine data from multiple tables.
