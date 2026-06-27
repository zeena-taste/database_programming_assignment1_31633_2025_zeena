/* ROW_NUMBER() */
SELECT
    student_id,
    course_id,
    grade,
    ROW_NUMBER() OVER (ORDER BY grade DESC) AS row_num
FROM Enrollments;

/* RANK() */
SELECT
    student_id,
    grade,
    RANK() OVER (ORDER BY grade DESC) AS rank
FROM Enrollments;

/* DENSE_RANK() */
SELECT
    student_id,
    grade,
    DENSE_RANK() OVER (ORDER BY grade DESC) AS dense_rank
FROM Enrollments;

/* PRECENT_RANK() */
SELECT
    student_id,
    grade,
    ROUND(PERCENT_RANK() OVER (ORDER BY grade), 2) AS percent_rank
FROM Enrollments;

/* SUM() +  OVER() */
SELECT
    enrollment_id,
    grade,
    SUM(grade) OVER (
        ORDER BY enrollment_id
    ) AS running_total
FROM Enrollments;

/* AVG() + OVER() */
SELECT
    student_id,
    grade,
    ROUND(AVG(grade) OVER (), 2) AS overall_average
FROM Enrollments;

/* MIN() + OVER() */
SELECT
    student_id,
    course_id,
    grade,
    MIN(grade) OVER(
        PARTITION BY student_id
        ) AS lowest_grade
FROM Enrollments;

/* MAX + OVER */
SELECT
    student_id,
    course_id,
    grade,
    MAX(grade) OVER (
        PARTITION BY student_id
    ) AS highest_grade
FROM Enrollments;

/* LAG() */
SELECT
    student_id,
    grade,
    LAG(grade) OVER (
        ORDER BY grade
    ) AS previous_grade
FROM Enrollments;

/* LEAD()*/
SELECT
    student_id,
    grade,
    LEAD(grade) OVER (
        ORDER BY grade
    ) AS next_grade
FROM Enrollments;

/* NTILE() */
SELECT
    student_id,
    grade,
    NTILE(4) OVER (
        ORDER BY grade DESC
    ) AS quartile
FROM Enrollments;

/* CUM_DIST() */
SELECT
    student_id,
    grade,
    ROUND(
        CUME_DIST() OVER (ORDER BY grade),
        2
    ) AS cumulative_distribution
FROM Enrollments;