 SELECT COUNT(*) AS Total_Students
  2  FROM Student;

TOTAL_STUDENTS
--------------
            10

SQL> SELECT COUNT(*) AS Total_Faculty
  2  FROM Faculty;

TOTAL_FACULTY
-------------
           10

SQL> SELECT COUNT(*) AS Total_Courses
  2  FROM Course;

TOTAL_COURSES
-------------
           10

SQL> SELECT MAX(CREDITS) AS Max_Credits
  2  FROM Course;

MAX_CREDITS
-----------
          4

SQL> SELECT MIN(CREDITS) AS Min_Credits
  2  FROM Course;

MIN_CREDITS
-----------
          2

SQL> SELECT DEPARTMENT_ID, COUNT(*) AS Number_of_Students
  2  FROM Student
  3  GROUP BY DEPARTMENT_ID;

DEPARTMENT_ID NUMBER_OF_STUDENTS
------------- ------------------
            1                  2
            2                  1
            3                  1
            4                  1
            5                  1
            6                  1
            7                  1
            8                  1
            9                  1

9 rows selected.

SQL> SELECT DEPARTMENT_ID, COUNT(*) AS Number_of_Faculty
  2  FROM Faculty
  3  GROUP BY DEPARTMENT_ID;

DEPARTMENT_ID NUMBER_OF_FACULTY
------------- -----------------
            1                 2
            2                 1
            3                 1
            4                 1
            5                 1
            6                 1
            7                 1
            8                 1
            9                 1

9 rows selected.

SQL> SELECT DEPARTMENT_ID, COUNT(*) AS Number_of_Courses
  2  FROM Course
  3  GROUP BY DEPARTMENT_ID;

DEPARTMENT_ID NUMBER_OF_COURSES
------------- -----------------
            1                 2
            2                 1
            3                 1
            4                 1
            5                 1
            6                 1
            7                 1
            8                 1
            9                 1

9 rows selected.

SQL> SELECT SEMESTER, COUNT(*) AS Total_Enrollments
  2  FROM Enrollment
  3  GROUP BY SEMESTER;

SEMESTER             TOTAL_ENROLLMENTS
-------------------- -----------------
4                                    1
6                                    2
5                                    1
3                                    2
2                                    2
1                                    2

6 rows selected.

SQL> SELECT GRADE, COUNT(*) AS Total_Students
  2  FROM Enrollment
  3  GROUP BY GRADE;

GRADE TOTAL_STUDENTS
----- --------------
B                  5
A                  5

SQL> SELECT DEPARTMENT_ID, COUNT(*) AS Total_Students
  2  FROM Student
  3  GROUP BY DEPARTMENT_ID
  4  HAVING COUNT(*) > 3;

no rows selected

SQL> SELECT SEMESTER, COUNT(*) AS Total_Enrollments
  2  FROM Enrollment
  3  GROUP BY SEMESTER
  4  HAVING COUNT(*) > 2;

no rows selected

SQL> SELECT GRADE, COUNT(*) AS Total_Students
  2  FROM Enrollment
  3  GROUP BY GRADE
  4  HAVING COUNT(*) > 1;

GRADE TOTAL_STUDENTS
----- --------------
B                  5
A                  5

SQL> SELECT DEPARTMENT_ID, COUNT(*) AS Total_Courses
  2  FROM Course
  3  GROUP BY DEPARTMENT_ID
  4  HAVING COUNT(*) > 1;

DEPARTMENT_ID TOTAL_COURSES
------------- -------------
            1             2

SQL> SELECT COURSE_ID, COUNT(STUDENT_ID) AS Enrolled_Students
  2  FROM Enrollment
  3  GROUP BY COURSE_ID;

 COURSE_ID ENROLLED_STUDENTS
---------- -----------------
         1                 1
         2                 1
         3                 1
         4                 1
         5                 1
         6                 1
         7                 1
         8                 1
         9                 1
        10                 1

10 rows selected.

SQL> SELECT c.COURSE_NAME, COUNT(e.STUDENT_ID) AS Enrolled_Students
  2  FROM Course c
  3  INNER JOIN Enrollment e
  4  ON c.COURSE_ID = e.COURSE_ID
  5  GROUP BY c.COURSE_NAME;

COURSE_NAME                                        ENROLLED_STUDENTS
-------------------------------------------------- -----------------
DBMS                                                               1
Operating System                                                   1
Thermodynamics                                                     1
Surveying                                                          1
Power Systems                                                      1
Analog Electronics                                                 1
Web Technology                                                     1
Engineering Physics                                                1
Management Principles                                              1
Workshop Practice                                                  1

10 rows selected.

SQL> SELECT DEPARTMENT_ID, COUNT(*) AS Total_Students
  2  FROM Student
  3  GROUP BY DEPARTMENT_ID;

DEPARTMENT_ID TOTAL_STUDENTS
------------- --------------
            1              2
            2              1
            3              1
            4              1
            5              1
            6              1
            7              1
            8              1
            9              1

9 rows selected.

SQL> SELECT f.NAME, COUNT(c.COURSE_ID) AS Total_Courses
  2  FROM Faculty f
  3  INNER JOIN Course c
  4  ON f.FACULTY_ID = c.FACULTY_ID
  5  GROUP BY f.NAME;

NAME                                               TOTAL_COURSES
-------------------------------------------------- -------------
Dr. R. Kumar                                                   1
Mr. A. Singh                                                   1
Mrs. S. Verma                                                  1
Mr. P. Yadav                                                   1
Dr. M. Sinha                                                   1
Mr. N. Roy                                                     1
Dr. A. Jha                                                     1
Mr. V. Mishra                                                  1
Mrs. K. Gupta                                                  1
Mr. R. Das                                                     1

10 rows selected.

SQL> SELECT c.COURSE_NAME, MAX(e.GRADE) AS Max_Grade
  2  FROM Course c
  3  INNER JOIN Enrollment e
  4  ON c.COURSE_ID = e.COURSE_ID
  5  GROUP BY c.COURSE_NAME;

COURSE_NAME                                        MAX_G
-------------------------------------------------- -----
DBMS                                               B
Operating System                                   A
Thermodynamics                                     B
Surveying                                          A
Power Systems                                      B
Analog Electronics                                 A
Web Technology                                     B
Engineering Physics                                A
Management Principles                              A
Workshop Practice                                  B

10 rows selected.

SQL> SELECT DEPARTMENT_ID, COUNT(*) AS Total_Courses
  2  FROM Course
  3  GROUP BY DEPARTMENT_ID;

DEPARTMENT_ID TOTAL_COURSES
------------- -------------
            1             2
            2             1
            3             1
            4             1
            5             1
            6             1
            7             1
            8             1
            9             1

9 rows selected.

SQL> SELECT SEMESTER, COUNT(STUDENT_ID) AS Total_Students
  2  FROM Enrollment
  3  GROUP BY SEMESTER;

SEMESTER             TOTAL_STUDENTS
-------------------- --------------
4                                 1
6                                 2
5                                 1
3                                 2
2                                 2
1                                 2

6 rows selected.

SQL> SELECT c.COURSE_NAME, COUNT(e.STUDENT_ID) AS Total_Students
  2  FROM Course c
  3  INNER JOIN Enrollment e
  4  ON c.COURSE_ID = e.COURSE_ID
  5  GROUP BY c.COURSE_NAME
  6  HAVING COUNT(e.STUDENT_ID) > 2;

no rows selected