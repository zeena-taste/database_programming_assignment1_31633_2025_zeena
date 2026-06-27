-- =========================
-- Students
-- =========================
INSERT INTO Students (student_id, name, email) VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com'),
(2, 'Bob Smith', 'bob.smith@example.com'),
(3, 'Charlie Brown', 'charlie.brown@example.com'),
(4, 'Diana Miller', 'diana.miller@example.com'),
(5, 'Ethan Davis', 'ethan.davis@example.com'),
(6, 'Fiona Wilson', 'fiona.wilson@example.com'),
(7, 'George Taylor', 'george.taylor@example.com'),
(8, 'Hannah Moore', 'hannah.moore@example.com'),
(9, 'Ian Thomas', 'ian.thomas@example.com'),
(10, 'Julia Anderson', 'julia.anderson@example.com'),
(11, 'Kevin Martin', 'kevin.martin@example.com'),
(12, 'Laura White', 'laura.white@example.com'),
(13, 'Michael Harris', 'michael.harris@example.com'),
(14, 'Nina Clark', 'nina.clark@example.com'),
(15, 'Oscar Lewis', 'oscar.lewis@example.com'),
(16, 'Paula Walker', 'paula.walker@example.com'),
(17, 'Quentin Hall', 'quentin.hall@example.com'),
(18, 'Rachel Allen', 'rachel.allen@example.com'),
(19, 'Samuel Young', 'samuel.young@example.com'),
(20, 'Tina King', 'tina.king@example.com');

-- =========================
-- Courses
-- =========================
INSERT INTO Courses (course_id, course_name) VALUES
(1, 'Introduction to Programming'),
(2, 'Database Systems'),
(3, 'Data Structures'),
(4, 'Operating Systems'),
(5, 'Computer Networks'),
(6, 'Web Development'),
(7, 'Software Engineering'),
(8, 'Artificial Intelligence');

-- =========================
-- Enrollments
-- =========================
INSERT INTO Enrollments (enrollment_id, student_id, course_id, grade) VALUES
(1, 1, 1, 88),
(2, 1, 2, 91),
(3, 2, 1, 75),
(4, 2, 3, 82),
(5, 3, 2, 95),
(6, 3, 4, 89),
(7, 4, 1, 67),
(8, 4, 5, 73),
(9, 5, 3, 84),
(10, 5, 6, 90),
(11, 6, 2, 78),
(12, 6, 7, 85),
(13, 7, 4, 80),
(14, 7, 8, 87),
(15, 8, 5, 92),
(16, 8, 6, 88),
(17, 9, 7, 70),
(18, 9, 3, 76),
(19, 10, 8, 98),
(20, 10, 2, 94),
(21, 11, 1, 81),
(22, 11, 4, 79),
(23, 12, 5, 86),
(24, 12, 7, 91),
(25, 13, 6, 74),
(26, 13, 8, 83),
(27, 14, 2, 89),
(28, 14, 3, 85),
(29, 15, 4, 72),
(30, 15, 1, 77),
(31, 16, 5, 93),
(32, 16, 8, 96),
(33, 17, 6, 82),
(34, 17, 7, 84),
(35, 18, 3, 88),
(36, 18, 2, 90),
(37, 19, 4, 69),
(38, 19, 5, 74),
(39, 20, 1, 87),
(40, 20, 8, 92);