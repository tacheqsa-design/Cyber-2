-- COMBINED SQL TASK
-- Students + Classes + Foreign Key + JOIN + Basic SQL Operations

-- =========================================================
-- 1. CREATE CLASSES TABLE
-- =========================================================

CREATE TABLE classes (
    class_id INTEGER PRIMARY KEY,
    class_name VARCHAR(50)
);

-- Add classes
INSERT INTO classes (class_id, class_name)
VALUES
    (1, 'Math'),
    (2, 'English');


-- =========================================================
-- 2. CREATE STUDENTS TABLE
--    Combines the information from both assignments
-- =========================================================

CREATE TABLE students (
    student_id INTEGER PRIMARY KEY,
    name VARCHAR(100),
    age INTEGER,
    grade INTEGER,
    class_id INTEGER,
    FOREIGN KEY (class_id) REFERENCES classes(class_id)
);

-- Add students
INSERT INTO students (student_id, name, age, grade, class_id)
VALUES
    (1, 'John', 18, 85, 1),
    (2, 'Emma', 19, 92, 2),
    (3, 'Mike', 17, 78, 1),
    (4, 'Sarah', 20, 95, 2);


-- =========================================================
-- 3. DISPLAY ALL STUDENTS
-- =========================================================

SELECT * FROM students;


-- =========================================================
-- 4. DISPLAY ONLY STUDENT NAMES
-- =========================================================

SELECT name FROM students;


-- =========================================================
-- 5. FIND STUDENTS OLDER THAN 18
-- =========================================================

SELECT * FROM students
WHERE age > 18;


-- =========================================================
-- 6. CHANGE JOHN'S GRADE
-- =========================================================

UPDATE students
SET grade = 90
WHERE student_id = 1;


-- =========================================================
-- 7. DELETE MIKE
-- =========================================================

DELETE FROM students
WHERE student_id = 3;


-- =========================================================
-- 8. JOIN STUDENTS WITH CLASSES
-- =========================================================

SELECT
    students.name,
    classes.class_name
FROM students
JOIN classes
    ON students.class_id = classes.class_id;
