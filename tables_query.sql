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

--Add BST data to Exam_Marks Table



INSERT INTO Exam_Marks 
(quiz1, quiz2, quiz3, mid_practical, mid_theory, end_practical, end_theory, assessments, stu_id, course_code,  dep_id)
VALUES
    (50, 70, 88, 20, 55, 68, 62, 58, 'TG/2022/1258', 'BST1212', 'DpBST'),
    (78, 84, 59, 38, 82, 75, 60, 84, 'TG/2022/1233', 'BST1212', 'DpBST'),
    (62, 49, 85, 83, 88, 87, 90, 45, 'TG/2022/1177', 'BST1212', 'DpBST'),
    (78, 82, 79, 88, 92, 85, 60, 40, 'TG/2022/1195', 'BST1212', 'DpBST'),
    (71, 44, 75, 86, 80, 15, 82, 85, 'TG/2022/1314', 'BST1212', 'DpBST'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1480', 'BST1212', 'DpBST'),
    (25, 30, 20, 28, 29, 35, 25, 30, 'TG/2021/1510', 'BST1212', 'DpBST'),  
    (30, 29, 35, 25, 28, 30, 30, 28, 'TG/2021/1332', 'BST1212', 'DpBST'),  
    (80, 10, 72, 80, 65, 68, 22, 78, 'TG/2022/1258', 'BST1222', 'DpBST'),
    (78, 84, 79, 80, 81, 85, 20, 34, 'TG/2022/1233', 'BST1222', 'DpBST'),
    (22, 19, 85, 53, 48, 47, 50, 45, 'TG/2022/1177', 'BST1222', 'DpBST'),
    (17, 80, 71, 38, 42, 65, 30, 54, 'TG/2022/1195', 'BST1222', 'DpBST'),
    (68, 84, 79, 88, 82, 85, 80, 84, 'TG/2022/1314', 'BST1222', 'DpBST'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1480', 'BST1222', 'DpBST'),
    (15, 10, 22, 24, 19, 25, 25, 00, 'TG/2021/1510', 'BST1222', 'DpBST'),  
    (30, 29, 35, 35, 21, 33, 30, 18, 'TG/2021/1332', 'BST1222', 'DpBST'),  
    (85, 90, 88, 80, 85, 78, 92, 88, 'TG/2022/1258', 'BST1232', 'DpBST'),
    (58, 44, 69, 82, 82, 45, 30, 44, 'TG/2022/1233', 'BST1232', 'DpBST'),
    (82, 89, 85, 83, 68, 67, 60, 65, 'TG/2022/1177', 'BST1232', 'DpBST'),
    (75, 64, 39, 38, 82, 85, 80, 84, 'TG/2022/1195', 'BST1232', 'DpBST'),
    (78, 84, 79, 88, 82, 85, 80, 84, 'TG/2022/1314', 'BST1232', 'DpBST'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1480', 'BST1232', 'DpBST'),
    (05, 30, 22, 18, 09, 30, 25, 30, 'TG/2021/1510', 'BST1232', 'DpBST'),  
    (31, 23, 36, 20, 21, 35, 30, 18, 'TG/2021/1332', 'BST1232', 'DpBST'),  
    (80, 70, 78, 82, 65, 68, 52, 28, 'TG/2022/1258', 'BST1242', 'DpBST'),
    (70, 64, 59, 38, 45, 67, 82, 64, 'TG/2022/1233', 'BST1242', 'DpBST'),
    (81, 29, 35, 73, 88, 87, 50, 65, 'TG/2022/1177', 'BST1242', 'DpBST'),
    (78, 84, 79, 80, 62, 35, 87, 81, 'TG/2022/1195', 'BST1242', 'DpBST'),
    (78, 54, 72, 68, 81, 85, 80, 84, 'TG/2022/1314', 'BST1242', 'DpBST'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1480', 'BST1242', 'DpBST'),
    (08, 30, 10, 18, 00, 35, 25, 30, 'TG/2021/1510', 'BST1242', 'DpBST'),
    (30, 29, 35, 25, 28, 31, 10, 23, 'TG/2021/1332', 'BST1242', 'DpBST'),
    (95, 90, 88, 81, 25, 78, 62, 68, 'TG/2022/1258', 'BST1252', 'DpBST'),
    (78, 84, 79, 68, 86, 35, 82, 87, 'TG/2022/1233', 'BST1252', 'DpBST'),
    (82, 89, 85, 83, 88, 87, 90, 85, 'TG/2022/1177', 'BST1252', 'DpBST'),
    (71, 88, 79, 18, 82, 65, 78, 90, 'TG/2022/1195', 'BST1252', 'DpBST'),
    (78, 84, 79, 88, 82, 85, 10, 33, 'TG/2022/1314', 'BST1252', 'DpBST'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1480', 'BST1252', 'DpBST'),
    (25, 30, 20, 28, 29, 35, 25, 30, 'TG/2021/1510', 'BST1252', 'DpBST'),
    (30, 29, 35, 25, 28, 30, 30, 28, 'TG/2021/1332', 'BST1252', 'DpBST'), 
    (05, 90, 88, 80, 85, 68, 72, 88, 'TG/2022/1258', 'BST1262', 'DpBST'),
    (78, 54, 79, 88, 82, 45, 50, 84, 'TG/2022/1233', 'BST1262', 'DpBST'),
    (82, 89, 62, 33, 68, 81, 60, 85, 'TG/2022/1177', 'BST1262', 'DpBST'),
    (78, 84, 79, 48, 52, 65, 70, 82, 'TG/2022/1195', 'BST1262', 'DpBST'),
    (08, 81, 19, 80, 72, 45, 88, 34, 'TG/2022/1314', 'BST1262', 'DpBST'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1480', 'BST1262', 'DpBST'),
    (12, 35, 00, 18, 19, 35, 25, 30, 'TG/2021/1510', 'BST1262', 'DpBST'),
    (30, 29, 35, 25, 18, 00, 30, 18, 'TG/2021/1332', 'BST1262', 'DpBST'),   
    (25, 50, 81, 70, 85, 78, 92, 88, 'TG/2022/1258', 'BST1272', 'DpBST'),
    (78, 88, 77, 08, 82, 85, 80, 84, 'TG/2022/1233', 'BST1272', 'DpBST'),
    (92, 89, 85, 83, 88, 87, 90, 85, 'TG/2022/1177', 'BST1272', 'DpBST'),
    (80, 44, 49, 58, 42, 35, 80, 54, 'TG/2022/1195', 'BST1272', 'DpBST'),
    (78, 84, 79, 68, 80, 55, 66, 14, 'TG/2022/1314', 'BST1272', 'DpBST'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1480', 'BST1272', 'DpBST'),
    (12, 00, 20, 18, 19, 35, 25, 30, 'TG/2021/1510', 'BST1272', 'DpBST'),
    (30, 29, 35, 25, 18, 10, 30, 28, 'TG/2021/1332', 'BST1272', 'DpBST'),
    (55, 80, 88, 80, 85, 78, 92, 88, 'TG/2022/1258', 'BST1282', 'DpBST'),
    (78, 14, 59, 68, 72, 15, 70, 84, 'TG/2022/1233', 'BST1282', 'DpBST'),
    (82, 89, 85, 83, 88, 87, 90, 85, 'TG/2022/1177', 'BST1282', 'DpBST'),
    (78, 84, 72, 81, 52, 75, 22, 84, 'TG/2022/1195', 'BST1282', 'DpBST'),
    (78, 84, 79, 88, 82, 85, 80, 84, 'TG/2022/1314', 'BST1282', 'DpBST'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1480', 'BST1282', 'DpBST'),
    (25, 30, 20, 28, 29, 35, 25, 30, 'TG/2021/1510', 'BST1282', 'DpBST'),
    (30, 29, 35, 25, 28, 30, 30, 28, 'TG/2021/1332', 'BST1282', 'DpBST');

    

