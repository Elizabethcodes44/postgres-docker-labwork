CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name  VARCHAR(50) NOT NULL,
    email      VARCHAR(100) UNIQUE
);

CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    title     VARCHAR(100) NOT NULL,
    credits   INT
);

CREATE TABLE enrollments (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    course_id  INT REFERENCES courses(course_id)
);

INSERT INTO students (first_name, last_name, email) VALUES
('Ada', 'Yilmaz', 'ada@example.com'),
('Ben', 'Kaya', 'ben@example.com');

INSERT INTO courses (title, credits) VALUES
('Databases', 5),
('Software Engineering', 6);

INSERT INTO enrollments (student_id, course_id) VALUES (1, 1), (1, 2), (2, 1);
SELECT * FROM students;

SELECT s.first_name, c.title
FROM enrollments e
JOIN students s ON s.student_id = e.student_id
JOIN courses c ON c.course_id = e.course_id;