--enter student data
INSERT INTO students (name, enrollment_date) VALUES ('Sally', '2016-01-01')
INSERT INTO students (name, enrollment_date) VALUES ('Sid', '2016-01-01')
INSERT INTO students (name, enrollment_date) VALUES ('Tim', '2016-01-01')
INSERT INTO students (name, enrollment_date) VALUES ('Jim', '2016-01-01')
INSERT INTO students (name, enrollment_date) VALUES ('Kim', '2016-01-01')
INSERT INTO students (name, enrollment_date) VALUES ('Kay', '2016-01-01')

--departments
INSERT INTO departments (name) VALUES ('Computert Science')
INSERT INTO departments (name) VALUES ('Music')
INSERT INTO departments (name) VALUES ('Philosophy')
INSERT INTO departments (name) VALUES ('English')
INSERT INTO departments (name) VALUES ('Chemistry')
INSERT INTO departments (name) VALUES ('Physics')

--majors
INSERT INTO majors (student_id, department_id) VALUES (1, 1)
INSERT INTO majors (student_id, department_id) VALUES (2, 1)
INSERT INTO majors (student_id, department_id) VALUES (3, 3)
INSERT INTO majors (student_id, department_id) VALUES (4, 2)
INSERT INTO majors (student_id, department_id) VALUES (6, 6)
INSERT INTO majors (student_id, department_id) VALUES (7, 5)
INSERT INTO majors (student_id, department_id) VALUES (8, 2)
INSERT INTO majors (student_id, department_id) VALUES (9, 4)
INSERT INTO majors (student_id, department_id) VALUES (9, 3)
INSERT INTO majors (student_id, department_id) VALUES (10, 3)
INSERT INTO majors (student_id, department_id) VALUES (12, 5)
INSERT INTO majors (student_id, department_id) VALUES (13, 5)
INSERT INTO majors (student_id, department_id) VALUES (13, 6)