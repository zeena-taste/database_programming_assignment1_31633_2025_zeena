/* Student mangment system */

/* Student table */
CREATE TABLE Students (
    student_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT
);

/* Courses table */
CREATE TABLE Courses (
    course_id INTEGER PRIMARY KEY,
    course_name TEXT
);

/* Enrollments table - connects to student and course table */
CREATE TABLE Enrollments (
    enrollment_id INTEGER PRIMARY KEY,
    student_id INTEGER,
    course_id INTEGER,
    grade INTEGER,

    FOREIGN KEY(student_id) REFERENCES Students(student_id),
    FOREIGN KEY(course_id) REFERENCES Courses(course_id)
);