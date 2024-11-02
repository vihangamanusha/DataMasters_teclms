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
('DpMUL','department of multidecepleanery','B.N.S.Amrasinhe','046-2545655','dep_mul@fot.ruh.ac.lk'),
('DpICT','department of information and communication technology','W.K.Arachchi','046-8857625','dep_ict@fot.ruh.ac.lk'),
('DpENT','department of engineering technology','P.M.Jyasinhe','046-2314569','dep_et@fot.ruh.ac.lk'),
('DpBST','department of boisystem technology','A.H.Gamage','046-2154698','dep_bst@fot.ruh.ac.lk')
;

--CREATE Exam_Marks table

CREATE TABLE Marks(
	quiz1 INT CHECK (quiz1 >= 0 AND quiz1 <= 100),
	quiz2 INT CHECK (quiz2 >= 0 AND quiz2 <= 100),
	quiz3 INT CHECK (quiz3 >= 0 AND quiz3 <= 100),
	mid_practical INT CHECK (mid_practical >= 0 AND mid_practical <= 100),
	mid_theory INT CHECK (mid_theory >= 0 AND mid_theory <= 100),
	end_practical INT CHECK (end_practical >= 0 AND end_practical <= 100),
	end_theory INT CHECK (end_theory >= 0 AND end_theory <= 100),
	assessments INT CHECK (assessments >= 0 AND assessments <= 100),
	student_id CHAR(15),
        course_code CHAR(10),
        dep_id VARCHAR(10),
        medical_submission_id CHAR(10),
        PRIMARY KEY (student_id, course_code)
);
--Add BST data to Exam_Marks Table



INSERT INTO Marks (quiz1, quiz2, quiz3, assessments, mid_theory, mid_practical, end_theory, end_practical, student_id, course_code, dep_id, medical_submission_id) VALUES
    (50, 70, 88, 20, 55, 68, 62, 58, 'TG/2022/1258', 'BST1212', 'DpBST', NULL),
    (78, 84, 59, 38, 82, 75, 60, 84, 'TG/2022/1233', 'BST1212', 'DpBST', NULL),
    (62, 49, 85, 83, 88, 87, 90, 45, 'TG/2022/1177', 'BST1212', 'DpBST', 'MS0007'),
    (78, 82, 79, 88, 92, 85, 60, 40, 'TG/2022/1195', 'BST1212', 'DpBST', NULL),
    (71, 44, 75, 86, 80, 15, 82, 85, 'TG/2022/1314', 'BST1212', 'DpBST', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1480', 'BST1212', 'DpBST', NULL),
    (65, 70, 20, 58, 79, 35, 55, 30, 'TG/2021/1510', 'BST1212', 'DpBST', NULL),
    (50, 29, 75, 25, 98, 30, 70, 28, 'TG/2021/1332', 'BST1212', 'DpBST', NULL),
    (80, 10, 72, 80, 65, 68, 22, 78, 'TG/2022/1258', 'BST1222', 'DpBST', NULL),
    (78, 84, 79, 80, 81, 85, 20, 34, 'TG/2022/1233', 'BST1222', 'DpBST', NULL),
    (22, 19, 85, 53, 48, 47, 50, 45, 'TG/2022/1177', 'BST1222', 'DpBST', NULL),
    (17, 80, 71, 38, 42, 65, 30, 54, 'TG/2022/1195', 'BST1222', 'DpBST', NULL),
    (68, 84, 79, 88, 82, 85, 80, 84, 'TG/2022/1314', 'BST1222', 'DpBST', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1480', 'BST1222', 'DpBST', NULL),
    (15, 80, 62, 24, 19, 45, 55, 80, 'TG/2021/1510', 'BST1222', 'DpBST', NULL),
    (80, 29, 65, 85, 41, 43, 30, 78, 'TG/2021/1332', 'BST1222', 'DpBST', NULL),
    (85, 90, 88, 80, 85, 78, 92, 88, 'TG/2022/1258', 'BST1232', 'DpBST', NULL),
    (58, 44, 69, 82, 82, 45, 30, 44, 'TG/2022/1233', 'BST1232', 'DpBST', NULL),
    (82, 89, 85, 83, 68, 67, 60, 65, 'TG/2022/1177', 'BST1232', 'DpBST', NULL),
    (75, 64, 39, 38, 82, 85, 80, 84, 'TG/2022/1195', 'BST1232', 'DpBST', NULL),
    (78, 84, 79, 88, 82, 85, 80, 84, 'TG/2022/1314', 'BST1232', 'DpBST', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1480', 'BST1232', 'DpBST', NULL),
    (5, 30, 22, 18, 9, 30, 25, 30, 'TG/2021/1510', 'BST1232', 'DpBST', NULL),
    (31, 23, 36, 20, 21, 35, 30, 18, 'TG/2021/1332', 'BST1232', 'DpBST', NULL),
    (80, 70, 78, 82, 65, 68, 52, 28, 'TG/2022/1258', 'BST1242', 'DpBST', NULL),
    (70, 64, 59, 38, 45, 67, 82, 64, 'TG/2022/1233', 'BST1242', 'DpBST', NULL),
    (81, 29, 35, 73, 88, 87, 50, 65, 'TG/2022/1177', 'BST1242', 'DpBST', NULL),
    (78, 84, 79, 80, 62, 35, 87, 0, 'TG/2022/1195', 'BST1242', 'DpBST', 'MS0008'),
    (78, 54, 72, 68, 81, 85, 80, 84, 'TG/2022/1314', 'BST1242', 'DpBST', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1480', 'BST1242', 'DpBST', NULL);


INSERT INTO Marks (quiz1, quiz2, quiz3, assessments, mid_theory, mid_practical, end_theory, end_practical, student_id, course_code, dep_id, medical_submission_id) VALUES
    (8, 30, 10, 18, 0, 35, 25, 30, 'TG/2021/1510', 'BST1242', 'DpBST', NULL),
    (30, 29, 35, 25, 28, 31, 10, 23, 'TG/2021/1332', 'BST1242', 'DpBST', NULL),
    (95, 90, 88, 81, 25, 78, 62, 68, 'TG/2022/1258', 'BST1252', 'DpBST', NULL),
    (78, 84, 79, 68, 86, 35, 82, 87, 'TG/2022/1233', 'BST1252', 'DpBST', NULL),
    (82, 89, 85, 83, 88, 87, 90, 85, 'TG/2022/1177', 'BST1252', 'DpBST', NULL),
    (71, 88, 79, 18, 82, 65, 78, 90, 'TG/2022/1195', 'BST1252', 'DpBST', NULL),
    (78, 84, 79, 88, 82, 85, 10, 33, 'TG/2022/1314', 'BST1252', 'DpBST', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1480', 'BST1252', 'DpBST', NULL),
    (25, 30, 20, 28, 29, 35, 25, 30, 'TG/2021/1510', 'BST1252', 'DpBST', NULL),
    (30, 29, 35, 25, 28, 30, 30, 28, 'TG/2021/1332', 'BST1252', 'DpBST', NULL),
    (5, 90, 88, 80, 85, 68, 72, 88, 'TG/2022/1258', 'BST1262', 'DpBST', NULL),
    (78, 54, 79, 88, 82, 45, 50, 84, 'TG/2022/1233', 'BST1262', 'DpBST', NULL),
    (82, 89, 62, 33, 68, 81, 60, 85, 'TG/2022/1177', 'BST1262', 'DpBST', NULL),
    (78, 84, 79, 48, 52, 65, 70, 82, 'TG/2022/1195', 'BST1262', 'DpBST', NULL),
    (8, 81, 19, 80, 72, 45, 88, 34, 'TG/2022/1314', 'BST1262', 'DpBST', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1480', 'BST1262', 'DpBST', NULL);



INSERT INTO Marks (quiz1, quiz2, quiz3, assessments, mid_theory, mid_practical, end_theory, end_practical, student_id, course_code, dep_id, medical_submission_id) VALUES
    (12, 35, 0, 18, 19, 35, 25, 30, 'TG/2021/1510', 'BST1262', 'DpBST', NULL),
    (30, 29, 35, 25, 18, 0, 30, 18, 'TG/2021/1332', 'BST1262', 'DpBST', NULL),
    (25, 50, 81, 70, 85, 78, 92, 88, 'TG/2022/1258', 'BST1272', 'DpBST', NULL),
    (78, 88, 77, 8, 82, 85, 80, 84, 'TG/2022/1233', 'BST1272', 'DpBST', NULL),
    (92, 89, 85, 83, 88, 87, 90, 85, 'TG/2022/1177', 'BST1272', 'DpBST', NULL),
    (80, 44, 49, 58, 42, 35, 80, 54, 'TG/2022/1195', 'BST1272', 'DpBST', NULL),
    (78, 84, 79, 68, 80, 55, 66, 14, 'TG/2022/1314', 'BST1272', 'DpBST', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1480', 'BST1272', 'DpBST', NULL),
    (12, 0, 20, 18, 19, 35, 25, 30, 'TG/2021/1510', 'BST1272', 'DpBST', NULL),
    (30, 29, 35, 25, 18, 10, 30, 28, 'TG/2021/1332', 'BST1272', 'DpBST', NULL),
    (55, 80, 88, 80, 85, 78, 92, 88, 'TG/2022/1258', 'BST1282', 'DpBST', NULL),
    (78, 14, 59, 68, 72, 15, 70, 84, 'TG/2022/1233', 'BST1282', 'DpBST', NULL),
    (82, 89, 85, 83, 88, 87, 90, 85, 'TG/2022/1177', 'BST1282', 'DpBST', NULL),
    (78, 84, 72, 81, 52, 75, 22, 84, 'TG/2022/1195', 'BST1282', 'DpBST', NULL),
    (78, 84, 79, 88, 82, 85, 80, 84, 'TG/2022/1314', 'BST1282', 'DpBST', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1480', 'BST1282', 'DpBST', NULL),
    (25, 30, 20, 28, 29, 35, 25, 30, 'TG/2021/1510', 'BST1282', 'DpBST', NULL),
    (30, 29, 35, 25, 28, 30, 30, 28, 'TG/2021/1332', 'BST1282', 'DpBST', NULL);



INSERT INTO Marks (quiz1, quiz2, quiz3, assessments, mid_theory, mid_practical, end_theory, end_practical, student_id, course_code, dep_id, medical_submission_id) VALUES
    (70, 28, 14, 50, 60, 0, 19, 0, 'TG/2022/1210', 'ENG1212', 'DpMUL', NULL),
    (45, 52, 68, 60, 50, 0, 85, 0, 'TG/2022/1325', 'ENG1212', 'DpMUL', NULL),
    (68, 20, 82, 70, 20, 0, 82, 0, 'TG/2022/1288', 'ENG1212', 'DpMUL', NULL),
    (53, 66, 45, 20, 30, 0, 84, 0, 'TG/2022/1105', 'ENG1212', 'DpMUL', NULL),
    (81, 82, 78, 60, 60, 0, 83, 0, 'TG/2022/1246', 'ENG1212', 'DpMUL', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1598', 'ENG1212', 'DpMUL', NULL),
    (30, 32, 28, 20, 40, 0, 30, 0, 'TG/2021/1293', 'ENG1212', 'DpMUL', NULL),  
    (35, 30, 28, 25, 29, 0, 30, 0, 'TG/2021/1234', 'ENG1212', 'DpMUL', NULL),  
    (78, 84, 85, 50, 82, 0, 87, 0, 'TG/2022/1258', 'TCS1212', 'DpBST', NULL),
    (82, 70, 80, 40, 64, 0, 85, 0, 'TG/2022/1233', 'TCS1212', 'DpBST', NULL),
    (15, 88, 83, 30, 26, 0, 53, 0, 'TG/2022/1177', 'TCS1212', 'DpBST', NULL),
    (60, 52, 10, 60, 85, 0, 82, 0, 'TG/2022/1195', 'TCS1212', 'DpBST', NULL),
    (20, 65, 21, 30, 83, 0, 75, 0, 'TG/2022/1314', 'TCS1212', 'DpBST', NULL),
    (0, 0, 0, 0, 70, 0, 0, 0, 'TG/2022/1480', 'TCS1212', 'DpBST', NULL),
    (25, 30, 20, 55, 29, 0, 25, 0, 'TG/2021/1510', 'TCS1212', 'DpBST', NULL),  
    (30, 29, 35, 62, 28, 0, 30, 0, 'TG/2021/1332', 'TCS1222', 'DpBST', NULL),  
     (5, 57, 82, 25, 18, 0, 90, 0, 'TG/2022/1258', 'ENG1232', 'DpMUL', NULL),
    (80, 84, 78, 70, 82, 0, 85, 0, 'TG/2022/1233', 'ENG1232', 'DpMUL', NULL),
    (78, 80, 79, 60, 85, 0, 82, 0, 'TG/2022/1177', 'ENG1232', 'DpMUL', NULL),
    (82, 81, 84, 80, 83, 0, 85, 0, 'TG/2022/1195', 'ENG1232', 'DpMUL', NULL),
    (79, 82, 80, 30, 84, 0, 80, 0, 'TG/2022/1314', 'ENG1232', 'DpMUL', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1480', 'ENG1232', 'DpMUL', NULL);


INSERT INTO Marks (quiz1, quiz2, quiz3, assessments, mid_theory, mid_practical, end_theory, end_practical, student_id, course_code, dep_id, medical_submission_id) VALUES
    (25, 30, 20, 50, 29, 0, 25, 0, 'TG/2021/1510', 'ENG1232', 'DpMUL', NULL),  
    (30, 29, 35, 60, 28, 0, 30, 0, 'TG/2021/1332', 'ENG1232', 'DpMUL', NULL),  
    (84, 86, 88, 83, 85, 82, 87, 85, 'TG/2022/1210', 'ENT1211', 'DpENT', NULL),
    (80, 82, 79, 78, 84, 85, 0, 82, 'TG/2022/1325', 'ENT1211', 'DpENT', 'MS0009'),
    (85, 87, 84, 80, 83, 81, 85, 83, 'TG/2022/1288', 'ENT1211', 'DpENT', NULL),
    (82, 80, 78, 84, 85, 83, 86, 82, 'TG/2022/1105', 'ENT1211', 'DpENT', NULL),
    (88, 82, 87, 81, 84, 85, 82, 83, 'TG/2022/1246', 'ENT1211', 'DpENT', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1598', 'ENT1211', 'DpENT', NULL),
    (30, 32, 28, 20, 29, 35, 30, 32, 'TG/2021/1293', 'ENT1211', 'DpENT', NULL),  
    (35, 30, 28, 25, 29, 33, 30, 30, 'TG/2021/1234', 'ENT1211', 'DpENT', NULL),  
    (20, 50, 88, 85, 0, 87, 0, 82, 'TG/2022/1210', 'ENT1221', 'DpENT', NULL),
    (45, 89, 77, 80, 0, 84, 0, 80, 'TG/2022/1325', 'ENT1221', 'DpENT', NULL),
    (70, 77, 42, 88, 0, 85, 0, 83, 'TG/2022/1288', 'ENT1221', 'DpENT', NULL),
    (30, 10, 41, 22, 0, 88, 0, 81, 'TG/2022/1105', 'ENT1221', 'DpENT', NULL),
    (50, 88, 70, 90, 0, 84, 0, 86, 'TG/2022/1246', 'ENT1221', 'DpENT', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1598', 'ENT1221', 'DpENT', NULL),
    (30, 32, 28, 20, 0, 35, 0, 32, 'TG/2021/1293', 'ENT1221', 'DpENT', NULL),  
    (35, 30, 28, 25, 0, 33, 0, 30, 'TG/2021/1234', 'ENT1221', 'DpENT', NULL),  
    (85, 88, 90, 87, 0, 92, 0, 0, 'TG/2022/1210', 'ENT1231', 'DpENT', 'MS0010'),
    (10, 52, 84, 85, 0, 88, 0, 83, 'TG/2022/1325', 'ENT1231', 'DpENT', NULL),
    (78, 11, 73, 52, 0, 85, 0, 80, 'TG/2022/1288', 'ENT1231', 'DpENT', NULL),
    (81, 85, 87, 88, 0, 90, 0, 85, 'TG/2022/1105', 'ENT1231', 'DpENT', NULL),
    (54, 66, 55, 53, 0, 89, 0, 84, 'TG/2022/1246', 'ENT1231', 'DpENT', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1598', 'ENT1231', 'DpENT', NULL);


INSERT INTO Marks (quiz1, quiz2, quiz3, assessments, mid_theory, mid_practical, end_theory, end_practical, student_id, course_code, dep_id, medical_submission_id) VALUES
    (30, 32, 28, 20, 0, 35, 0, 32, 'TG/2021/1293', 'ENT1231', 'DpENT', NULL),  
    (35, 30, 28, 25, 0, 33, 0, 30, 'TG/2021/1234', 'ENT1231', 'DpENT', NULL),  
    (55, 78, 80, 50, 67, 0, 62, 0, 'TG/2022/1210', 'ENT1242', 'DpENT', NULL),
    (50, 52, 74, 40, 85, 0, 68, 0, 'TG/2022/1325', 'ENT1242', 'DpENT', NULL),
    (78, 10, 53, 30, 82, 0, 15, 0, 'TG/2022/1288', 'ENT1242', 'DpENT', NULL),
    (82, 47, 87, 60, 88, 0, 90, 0, 'TG/2022/1105', 'ENT1242', 'DpENT', NULL),
    (84, 86, 70, 50, 73, 0, 83, 0, 'TG/2022/1246', 'ENT1242', 'DpENT', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1598', 'ENT1242', 'DpENT', NULL),
    (30, 32, 28, 90, 29, 0, 30, 0, 'TG/2021/1293', 'ENT1242', 'DpENT', NULL),  
    (35, 30, 28, 70, 29, 0, 30, 0, 'TG/2021/1234', 'ENT1242', 'DpENT', NULL), 
    (26, 49, 57, 40, 70, 0, 62, 0, 'TG/2022/1210', 'ENT1253', 'DpENT', NULL),
    (81, 70, 80, 60, 75, 0, 48, 0, 'TG/2022/1325', 'ENT1253', 'DpENT', NULL),
    (55, 40, 80, 70, 84, 0, 85, 0, 'TG/2022/1288', 'ENT1253', 'DpENT', NULL),
    (45, 86, 84, 30, 89, 0, 90, 0, 'TG/2022/1105', 'ENT1253', 'DpENT', NULL),
    (85, 87, 86, 20, 88, 0, 91, 0, 'TG/2022/1246', 'ENT1253', 'DpENT', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1598', 'ENT1253', 'DpENT', NULL);



INSERT INTO Marks (quiz1, quiz2, quiz3, assessments, mid_theory, mid_practical, end_theory, end_practical, student_id, course_code, dep_id, medical_submission_id) VALUES
    (30, 32, 28, 70, 29, 0, 30, 0, 'TG/2021/1293', 'ENT1253', 'DpENT', NULL),  
    (35, 30, 28, 90, 29, 0, 30, 0, 'TG/2021/1234', 'ENT1253', 'DpENT', NULL),  
    (8, 90, 80, 20, 67, 0, 71, 0, 'TG/2022/1210', 'TCS1212', 'DpENT', NULL),
    (10, 74, 20, 50, 85, 0, 58, 0, 'TG/2022/1325', 'TCS1212', 'DpENT', NULL),
    (82, 85, 83, 10, 26, 0, 69, 0, 'TG/2022/1288', 'TCS1212', 'DpENT', NULL),
    (85, 87, 86, 80, 89, 0, 90, 0, 'TG/2022/1105', 'TCS1212', 'DpENT', NULL),
    (83, 88, 84, 70, 86, 0, 47, 0, 'TG/2022/1246', 'TCS1212', 'DpENT', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1598', 'TCS1212', 'DpENT', NULL),
    (30, 32, 28, 55, 29, 0, 30, 0, 'TG/2021/1293', 'TCS1212', 'DpENT', NULL),  
    (35, 30, 28, 56, 29, 0, 30, 0, 'TG/2021/1234', 'TCS1212', 'DpENT', NULL),  
    (40, 38, 84, 78, 82, 85, 70, 66, 'TG/2022/1210', 'TMS1223', 'DpENT', NULL),
    (80, 82, 9, 75, 80, 13, 77, 42, 'TG/2022/1325', 'TMS1223', 'DpENT', NULL),
    (35, 87, 70, 77, 81, 85, 88, 84, 'TG/2022/1288', 'TMS1223', 'DpENT', NULL),
    (80, 75, 12, 60, 73, 86, 89, 67, 'TG/2022/1105', 'TMS1223', 'DpENT', NULL),
    (84, 83, 81, 46, 72, 64, 27, 73, 'TG/2022/1246', 'TMS1223', 'DpENT', NULL);



INSERT INTO Marks (quiz1, quiz2, quiz3, assessments, mid_theory, mid_practical, end_theory, end_practical, student_id, course_code, dep_id, medical_submission_id) VALUES
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1598', 'TMS1223', 'DpENT', NULL),
    (30, 32, 28, 20, 29, 35, 30, 32, 'TG/2021/1293', 'TMS1223', 'DpENT', NULL),  
    (35, 30, 28, 25, 29, 33, 30, 30, 'TG/2021/1234', 'TMS1223', 'DpENT', NULL),  
    (88, 85, 87, 10, 84, 0, 88, 0, 'TG/2022/1122', 'ENG1222', 'DpMUL', NULL),
    (50, 78, 80, 10, 72, 0, 35, 0, 'TG/2022/1147', 'ENG1222', 'DpMUL', NULL),
    (85, 84, 82, 60, 86, 0, 63, 0, 'TG/2022/1305', 'ENG1222', 'DpMUL', NULL),
    (83, 81, 80, 70, 83, 0, 82, 0, 'TG/2022/1188', 'ENG1222', 'DpMUL', NULL),
    (60, 80, 70, 80, 54, 0, 70, 0, 'TG/2022/1190', 'ENG1222', 'DpMUL', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1345', 'ENG1222', 'DpMUL', NULL), 
    (20, 25, 30, 20, 28, 0, 31, 0, 'TG/2021/1155', 'ENG1222', 'DpMUL', NULL),  
    (20, 55, 52, 90, 45, 0, 88, 0, 'TG/2022/1122', 'ICT1212', 'DpICT', NULL),
    (80, 82, 84, 30, 83, 0, 75, 0, 'TG/2022/1147', 'ICT1212', 'DpICT', NULL),
    (40, 83, 80, 40, 80, 0, 44, 0, 'TG/2022/1305', 'ICT1212', 'DpICT', NULL),
    (30, 80, 85, 20, 84, 0, 80, 0, 'TG/2022/1188', 'ICT1212', 'DpICT', NULL),
    (2, 84, 71, 66, 40, 0, 79, 0, 'TG/2022/1190', 'ICT1212', 'DpICT', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1345', 'ICT1212', 'DpICT', NULL), 
    (35, 30, 25, 80, 28, 0, 30, 0, 'TG/2021/1155', 'ICT1212', 'DpICT', NULL),  
    (50, 10, 30, 85, 0, 88, 0, 82, 'TG/2022/1122', 'ICT1222', 'DpICT', NULL),
    (60, 20, 60, 82, 0, 80, 0, 83, 'TG/2022/1147', 'ICT1222', 'DpICT', NULL),
    (70, 40, 90, 88, 0, 85, 0, 84, 'TG/2022/1305', 'ICT1222', 'DpICT', 'MS0011'),
    (40, 50, 40, 85, 0, 87, 0, 82, 'TG/2022/1188', 'ICT1222', 'DpICT', NULL),
    (80, 100, 70, 80, 0, 82, 0, 83, 'TG/2022/1190', 'ICT1222', 'DpICT', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1345', 'ICT1222', 'DpICT', NULL);


INSERT INTO Marks (quiz1, quiz2, quiz3, assessments, mid_theory, mid_practical, end_theory, end_practical, student_id, course_code, dep_id, medical_submission_id) VALUES
    (20, 25, 30, 35, 0, 29, 0, 30, 'TG/2021/1155', 'ICT121', 'DpICT', NULL),  
    (88, 42, 85, 84, 87, 90, 93, 89, 'TG/2022/1122', 'ICT1233', 'DpICT', 'MS0012'),
    (81, 80, 72, 8, 80, 78, 66, 83, 'TG/2022/1147', 'ICT1233', 'DpICT', NULL),
    (85, 88, 34, 62, 56, 80, 52, 76, 'TG/2022/1305', 'ICT1233', 'DpICT', NULL),
    (89, 90, 47, 86, 79, 91, 74, 61, 'TG/2022/1188', 'ICT1233', 'DpICT', NULL),
    (34, 46, 83, 80, 65, 17, 18, 35, 'TG/2022/1190', 'ICT1233', 'DpICT', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1345', 'ICT1233', 'DpICT', NULL),
    (20, 25, 30, 35, 28, 29, 31, 30, 'TG/2021/1155', 'ICT1233', 'DpICT', NULL),  
    (70, 90, 39, 20, 85, 0, 92, 0, 'TG/2022/1122', 'ICT1242', 'DpICT', NULL),
    (82, 88, 45, 30, 30, 0, 85, 0, 'TG/2022/1147', 'ICT1242', 'DpICT', NULL),
    (14, 17, 86, 50, 43, 0, 88, 0, 'TG/2022/1305', 'ICT1242', 'DpICT', NULL),
    (79, 93, 90, 70, 38, 0, 91, 0, 'TG/2022/1188', 'ICT1242', 'DpICT', NULL),
    (65, 79, 87, 30, 76, 0, 87, 0, 'TG/2022/1190', 'ICT1242', 'DpICT', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1345', 'ICT1242', 'DpICT', NULL), 
    (20, 25, 30, 30, 28, 0, 31, 0, 'TG/2021/1155', 'ICT1242', 'DpICT', NULL),  
    (80, 50, 39, 86, 84, 90, 93, 87, 'TG/2022/1122', 'ICT1253', 'DpICT', NULL),
    (80, 60, 65, 81, 79, 87, 89, 82, 'TG/2022/1147', 'ICT1253', 'DpICT', NULL),
    (40, 80, 36, 92, 63, 82, 20, 55, 'TG/2022/1305', 'ICT1253', 'DpICT', NULL),
    (10, 60, 91, 58, 75, 91, 12, 60, 'TG/2022/1188', 'ICT1253', 'DpICT', NULL),
    (60, 90, 87, 30, 52, 79, 38, 86, 'TG/2022/1190', 'ICT1253', 'DpICT', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1345', 'ICT1253', 'DpICT', NULL), 
    (20, 25, 30, 35, 28, 29, 31, 30, 'TG/2021/1155', 'ICT1253', 'DpICT', NULL);


INSERT INTO Marks (quiz1, quiz2, quiz3, assessments, mid_theory, mid_practical, end_theory, end_practical, student_id, course_code, dep_id, medical_submission_id) VALUES
    (88, 12, 85, 04, 87, 0, 91, 0, 'TG/2022/1122', 'TCS1212', 'DpICT', NULL),
    (80, 40, 20, 60, 55, 0, 58, 0, 'TG/2022/1147', 'TCS1212', 'DpICT', NULL),
    (82, 85, 83, 20, 56, 0, 79, 0, 'TG/2022/1305', 'TCS1212', 'DpICT', NULL),
    (85, 7, 80, 70, 19, 0, 90, 0, 'TG/2022/1188', 'TCS1212', 'DpICT', NULL),
    (20, 60, 40, 30, 26, 0, 37, 0, 'TG/2022/1190', 'TCS1212', 'DpICT', NULL),
    (0, 0, 0, 0, 50, 0, 0, 0, 'TG/2022/1345', 'TCS1212', 'DpICT', NULL), 
    (20, 25, 30, 30, 28, 0, 31, 0, 'TG/2021/1155', 'TCS1212', 'DpICT', NULL);


INSERT INTO Marks (quiz1, quiz2, quiz3, assessments, mid_theory, mid_practical, end_theory, end_practical, student_id, course_code, dep_id, medical_submission_id) VALUES
    (15, 60, 74, 78, 82, 0, 90, 0, 'TG/2022/1122', 'TMS1223', 'DpICT', NULL),
    (30, 20, 79, 75, 80, 0, 87, 0, 'TG/2022/1147', 'TMS1223', 'DpICT', NULL),
    (83, 6, 60, 77, 81, 0, 88, 0, 'TG/2022/1305', 'TMS1223', 'DpICT', NULL),
    (57, 75, 52, 80, 83, 0, 89, 0, 'TG/2022/1188', 'TMS1223', 'DpICT', NULL),
    (85, 53, 81, 76, 82, 0, 87, 0, 'TG/2022/1190', 'TMS1223', 'DpICT', NULL),
    (0, 0, 0, 0, 0, 0, 0, 0, 'TG/2022/1345', 'TMS1223', 'DpICT', NULL), 
    (20, 25, 30, 35, 28, 0, 31, 0, 'TG/2021/1155', 'TMS1223', 'DpICT', NULL);






