CREATE TABLE Department (
    department_id VARCHAR(10) PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    head_of_department VARCHAR(100),
    contact_number VARCHAR(15),
    email VARCHAR(100)
);

--Adding data to department table

INSERT INTO Department
VALUES
('DpMUL','department of multidecepleanery','ABC','046-2545655','dep_mul@fot.ruh.ac.lk'),
('DpICT','department of information and communication technology','def','046-8857625','dep_ict@fot.ruh.ac.lk'),
('DpENT','department of engineering technology','ghi','046-2314569','dep_et@fot.ruh.ac.lk'),
('DpBST','department of boisystem technology','jkl','046-2154698','dep_bst@fot.ruh.ac.lk')
;

--CREATE Exam_Marks table

CREATE TABLE Exam_Marks (
    quiz1 INT,
    quiz2 INT,
    quiz3 INT,
    mid_practical INT,
    mid_theory INT,
    end_practical INT,
    end_theory INT,
    assesments INT,
    stu_id CHAR(15) NOT NULL,
    course_code CHAR(10) NOT NULL,
    dep_id VARCHAR(10),
    PRIMARY KEY (student_id, course_code)
);

