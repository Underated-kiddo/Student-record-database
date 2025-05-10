CREATE DATABASE students_records;
USE students_records ;

CREATE TABLE courses 
(
course_id INT PRIMARY KEY,
course_name VARCHAR (100),
course_school VARCHAR (100)
)
;


CREATE TABLE students
(
Student_id INT PRIMARY KEY,
First_name VARCHAR (100),
Last_name VARCHAR (100),
course_id INT ,
Age INT, 
FOREIGN KEY (course_id) REFERENCES courses(course_id)
)
;


CREATE TABLE enrollments
(
student_id INT ,
course_id INT ,
join_date DATE ,
FOREIGN KEY (student_id) REFERENCES students(student_id),
FOREIGN KEY (course_id) REFERENCES courses(course_id)
)
;

CREATE TABLE departments
(
department_id INT PRIMARY KEY,
department_name VARCHAR (100),
department_school VARCHAR (100)
)
;


CREATE TABLE professors
(
professor_id INT PRIMARY KEY,
first_name VARCHAR (100),
last_name VARCHAR (100),
course_id INT ,
department_id INT ,
FOREIGN KEY (course_id) REFERENCES courses(course_id),
FOREIGN KEY (department_id) REFERENCES departments(department_id)
)
;