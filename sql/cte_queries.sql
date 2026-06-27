/* 1. Simple CTE */
WITH StudentAverage AS (
    SELECT
        student_id,
        AVG(grade) AS average_grade
    FROM Enrollments
    GROUP BY student_id
)

SELECT
    s.student_id,
    s.name,
    sa.average_grade
FROM StudentAverage sa
JOIN Students s
    ON sa.student_id = s.student_id
ORDER BY s.student_id;

/* 2. Aggregation CTE - the avarge score per course */
WITH CourseAverages AS (
    SELECT
        course_id,
        AVG(grade) AS avg_grade
    FROM Enrollments
    GROUP BY course_id
)
SELECT
    c.course_name,
    ca.avg_grade
FROM CourseAverages ca
JOIN Courses c
    ON ca.course_id = c.course_id
ORDER BY ca.avg_grade DESC;

/* 3. CTE + JOIN - shows every student's enrolled courses and grade */
WITH EnrollmentDetails AS (
    SELECT
        student_id,
        course_id,
        grade
    FROM Enrollments
)

SELECT
    s.name,
    c.course_name,
    ed.grade
FROM EnrollmentDetails ed
JOIN Students s
    ON ed.student_id = s.student_id
JOIN Courses c
    ON ed.course_id = c.course_id
ORDER BY s.name;

/* 4. Multiple CTEs - comparing studnets avarge grade to the overall avrage */
WITH StudentAverage AS (
    SELECT
        student_id,
        AVG(grade) AS average_grade
    FROM Enrollments
    GROUP BY student_id
),
OverallAverage AS (
    SELECT
        AVG(grade) AS overall_average
    FROM Enrollments
)

SELECT
    s.name,
    sa.average_grade,
    oa.overall_average,
    CASE
        WHEN sa.average_grade > oa.overall_average THEN 'Above Average'
        WHEN sa.average_grade < oa.overall_average THEN 'Below Average'
        ELSE 'Average'
    END AS performance
FROM StudentAverage sa
JOIN Students s
    ON sa.student_id = s.student_id
CROSS JOIN OverallAverage oa
ORDER BY sa.average_grade DESC;

/* 5. Recursive CTEs - genrate numbers from 1 to 10 */
WITH RECURSIVE Numbers(n) AS (
    SELECT 1

    UNION ALL

    SELECT n + 1
    FROM Numbers
    WHERE n < 10
)

SELECT *
FROM Numbers;