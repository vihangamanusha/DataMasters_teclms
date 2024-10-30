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



--ET and ICT 


INSERT INTO Exam_Marks 
(quiz1, quiz2, quiz3, mid_practical, mid_theory, end_practical, end_theory, assessments, stu_id, course_code,  dep_id)
VALUES
    (70, 28, 14, NULL, 25, NULL, 19, 87, 'TG/2022/1210', 'ENG1212', 'DpENT'),
    (45, 52, 68, NULL, 84, NULL, 85, 86, 'TG/2022/1325', 'ENG1212', 'DpENT'),
    (68, 20, 82, NULL, 70, NULL, 82, 83, 'TG/2022/1288', 'ENG1212', 'DpENT'),
    (53, 66, 45, NULL, 36, NULL, 84, 85, 'TG/2022/1105', 'ENG1212', 'DpENT'),
    (81, 82, 78, NULL, 82, NULL, 83, 82, 'TG/2022/1246', 'ENG1212', 'DpENT'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1598', 'ENG1212', 'DpENT'),
    (30, 32, 28, 20, 29, 35, 30, 32, 'TG/2021/1293', 'ENG1212', 'DpENT'),  
    (35, 30, 28, 25, 29, 33, 30, 30, 'TG/2021/1234', 'ENG1212', 'DpENT'),  
    (78, 84, 85, NULL, 82, NULL, 87, 80, 'TG/2022/1258', 'TCS1212', 'DpBST'),
    (82, 70, 80, NULL, 64, NULL, 85, 83, 'TG/2022/1233', 'TCS1212', 'DpBST'),
    (15, 88, 83, NULL, 26, NULL, 53, 45, 'TG/2022/1177', 'TCS1212', 'DpBST'),
    (60, 52, 10, NULL, 85, NULL, 82, 81, 'TG/2022/1195', 'TCS1212', 'DpBST'),
    (20, 65, 21, NULL, 83, NULL, 75, 64, 'TG/2022/1314', 'TCS1212', 'DpBST'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1480', 'TCS1212', 'DpBST'),
    (25, 30, 20, NULL, 29, NULL, 25, 30, 'TG/2021/1510', 'TCS1212', 'DpBST'),  
    (30, 29, 35, NULL, 28, NULL, 30, 28, 'TG/2021/1332', 'TCS1222', 'DpBST'),  
    (05, 57, 82, NULL, 18, NULL, 90, 85, 'TG/2022/1258', 'ENG1232', 'DpBST'),
    (80, 84, 78, NULL, 82, NULL, 85, 83, 'TG/2022/1233', 'ENG1232', 'DpBST'),
    (78, 80, 79, NULL, 85, NULL, 82, 84, 'TG/2022/1177', 'ENG1232', 'DpBST'),
    (82, 81, 84, NULL, 83, NULL, 85, 86, 'TG/2022/1195', 'ENG1232', 'DpBST'),
    (79, 82, 80, NULL, 84, NULL, 80, 82, 'TG/2022/1314', 'ENG1232', 'DpBST'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1480', 'ENG1232', 'DpBST'),
    (25, 30, 20, NULL, 29, NULL, 25, 30, 'TG/2021/1510', 'ENG1232', 'DpBST'),  
    (30, 29, 35, NULL, 28, NULL, 30, 28, 'TG/2021/1332', 'ENG1232', 'DpBST'),  
    (84, 86, 88, 83, 85, 82, 87, 85, 'TG/2022/1210', 'ENT1211', 'DpENT'),
    (80, 82, 79, 78, 84, 85, 80, 82, 'TG/2022/1325', 'ENT1211', 'DpENT'),
    (85, 87, 84, 80, 83, 81, 85, 83, 'TG/2022/1288', 'ENT1211', 'DpENT'),
    (82, 80, 78, 84, 85, 83, 86, 82, 'TG/2022/1105', 'ENT1211', 'DpENT'),
    (88, 82, 87, 81, 84, 85, 82, 83, 'TG/2022/1246', 'ENT1211', 'DpENT'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1598', 'ENT1211', 'DpENT'),
    (30, 32, 28, 20, 29, 35, 30, 32, 'TG/2021/1293', 'ENT1211', 'DpENT'),  
    (35, 30, 28, 25, 29, 33, 30, 30, 'TG/2021/1234', 'ENT1211', 'DpENT'),  
    (20, 50, 88, 85, NULL, 87, NULL, 82, 'TG/2022/1210', 'ENT1221', 'DpENT'),
    (45, 89, 77, 80, NULL, 84, NULL, 80, 'TG/2022/1325', 'ENT1221', 'DpENT'),
    (70, 77, 42, 88, NULL, 85, NULL, 83, 'TG/2022/1288', 'ENT1221', 'DpENT'),
    (30, 10, 41, 22, NULL, 88, NULL, 81, 'TG/2022/1105', 'ENT1221', 'DpENT'),
    (50, 88, 70, 90, NULL, 84, NULL, 86, 'TG/2022/1246', 'ENT1221', 'DpENT'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1598', 'ENT1221', 'DpENT'),
    (30, 32, 28, 20, NULL, 35, NULL, 32, 'TG/2021/1293', 'ENT1221', 'DpENT'),  
    (35, 30, 28, 25, NULL, 33, NULL, 30, 'TG/2021/1234', 'ENT1221', 'DpENT'),  
    (85, 88, 90, 87, NULL, 92, NULL, 88, 'TG/2022/1210', 'ENT1231', 'DpENT'),
    (10, 52, 84, 85, NULL, 88, NULL, 83, 'TG/2022/1325', 'ENT1231', 'DpENT'),
    (78, 11, 73, 52, NULL, 85, NULL, 80, 'TG/2022/1288', 'ENT1231', 'DpENT'),
    (81, 85, 87, 88, NULL, 90, NULL, 85, 'TG/2022/1105', 'ENT1231', 'DpENT'),
    (54, 66, 55, 53, NULL, 89, NULL, 84, 'TG/2022/1246', 'ENT1231', 'DpENT'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1598', 'ENT1231', 'DpENT'),
    (30, 32, 28, 20, NULL, 35, NULL, 32, 'TG/2021/1293', 'ENT1231', 'DpENT'),  
    (35, 30, 28, 25, NULL, 33, NULL, 30, 'TG/2021/1234', 'ENT1231', 'DpENT'),  
    (55, 78, 80, NULL, 67, NULL, 62, 88, 'TG/2022/1210', 'ENT1242', 'DpENT'),
    (50, 52, 74, NULL, 85, NULL, 68, 33, 'TG/2022/1325', 'ENT1242', 'DpENT'),
    (78, 10, 53, NULL, 82, NULL, 15, 40, 'TG/2022/1288', 'ENT1242', 'DpENT'),
    (82, 47, 87, NULL, 88, NULL, 90, 85, 'TG/2022/1105', 'ENT1242', 'DpENT'),
    (84, 86, 70, NULL, 73, NULL, 83, 84, 'TG/2022/1246', 'ENT1242', 'DpENT'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1598', 'ENT1242', 'DpENT'),
    (30, 32, 28, NULL, 29, NULL, 30, 32, 'TG/2021/1293', 'ENT1242', 'DpENT'),  
    (35, 30, 28, NULL, 29, NULL, 30, 30, 'TG/2021/1234', 'ENT1242', 'DpENT'), 
    (26, 49, 57, NULL, 70, NULL, 62, 88, 'TG/2022/1210', 'ENT1253', 'DpENT'),
    (81, 70, 80, NULL, 75, NULL, 48, 33, 'TG/2022/1325', 'ENT1253', 'DpENT'),
    (55, 40, 80, NULL, 84, NULL, 85, 82, 'TG/2022/1288', 'ENT1253', 'DpENT'),
    (45, 86, 84, NULL, 89, NULL, 90, 85, 'TG/2022/1105', 'ENT1253', 'DpENT'),
    (85, 87, 86, NULL, 88, NULL, 91, 87, 'TG/2022/1246', 'ENT1253', 'DpENT'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1598', 'ENT1253', 'DpENT'),
    (30, 32, 28, NULL, 29, NULL, 30, 32, 'TG/2021/1293', 'ENT1253', 'DpENT'),  
    (35, 30, 28, NULL, 29, NULL, 30, 30, 'TG/2021/1234', 'ENT1253', 'DpENT'),  
    (08, 90, 80, NULL, 67, NULL, 71, 89, 'TG/2022/1210', 'TCS1212', 'DpENT'),
    (10, 74, 20, NULL, 85, NULL, 58, 83, 'TG/2022/1325', 'TCS1212', 'DpENT'),
    (82, 85, 83, NULL, 26, NULL, 69, 55, 'TG/2022/1288', 'TCS1212', 'DpENT'),
    (85, 87, 86, NULL, 89, NULL, 90, 48, 'TG/2022/1105', 'TCS1212', 'DpENT'),
    (83, 88, 84, NULL, 86, NULL, 47, 24, 'TG/2022/1246', 'TCS1212', 'DpENT'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1598', 'TCS1212', 'DpENT'),
    (30, 32, 28, NULL, 29, NULL, 30, 32, 'TG/2021/1293', 'TCS1212', 'DpENT'),  
    (35, 30, 28, NULL, 29, NULL, 30, 30, 'TG/2021/1234', 'TCS1212', 'DpENT'),  
    (40, 38, 84, 78, 82, 85, 70, 66, 'TG/2022/1210', 'TMS1223', 'DpENT'),
    (80, 82, 09, 75, 80, 13, 77, 42, 'TG/2022/1325', 'TMS1223', 'DpENT'),
    (35, 87, 70, 77, 81, 85, 88, 84, 'TG/2022/1288', 'TMS1223', 'DpENT'),
    (80, 75, 12, 60, 73, 86, 89, 67, 'TG/2022/1105', 'TMS1223', 'DpENT'),
    (84, 83, 81, 46, 72, 64, 27, 73, 'TG/2022/1246', 'TMS1223', 'DpENT');
    
INSERT INTO Exam_Marks 
(quiz1, quiz2, quiz3, mid_practical, mid_theory, end_practical, end_theory, assessments, stu_id, course_code,  dep_id)
VALUES
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1598', 'TMS1223', 'DpENT'),
    (30, 32, 28, 20, 29, 35, 30, 32, 'TG/2021/1293', 'TMS1223', 'DpENT'),  
    (35, 30, 28, 25, 29, 33, 30, 30, 'TG/2021/1234', 'TMS1223', 'DpENT'),  
    (88, 85, 87, NULL, 84, NULL, 88, 85, 'TG/2022/1122', 'ENG1222', 'DpICT'),
    (50, 78, 80, NULL, 72, NULL, 35, 43, 'TG/2022/1147', 'ENG1222', 'DpICT'),
    (85, 84, 82, NULL, 86, NULL, 63, 74, 'TG/2022/1305', 'ENG1222', 'DpICT'),
    (83, 81, 80, NULL, 83, NULL, 82, 81, 'TG/2022/1188', 'ENG1222', 'DpICT'),
    (60, 80, 70, NULL, 54, NULL, 70, 62, 'TG/2022/1190', 'ENG1222', 'DpICT'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1345', 'ENG1222', 'DpICT'), 
    (20, 25, 30, NULL, 28, NULL, 31, 30, 'TG/2021/1155', 'ENG1222', 'DpICT'),  
    (20, 55, 52, NULL, 45, NULL, 88, 37, 'TG/2022/1122', 'ICT1212', 'DpICT'),
    (80, 82, 84, NULL, 83, NULL, 75, 42, 'TG/2022/1147', 'ICT1212', 'DpICT'),
    (40, 83, 80, NULL, 80, NULL, 44, 31, 'TG/2022/1305', 'ICT1212', 'DpICT'),
    (30, 80, 85, NULL, 84, NULL, 80, 72, 'TG/2022/1188', 'ICT1212', 'DpICT'),
    (02, 84, 71, NULL, 40, NULL, 79, 70, 'TG/2022/1190', 'ICT1212', 'DpICT'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1345', 'ICT1212', 'DpICT'), 
    (35, 30, 25, NULL, 28, NULL, 30, 32, 'TG/2021/1155', 'ICT1212', 'DpICT'),  
    (50, 10, 30, 85, NULL, 88, NULL, 82, 'TG/2022/1122', 'ICT1222', 'DpICT'),
    (60, 20, 60, 82, NULL, 80, NULL, 83, 'TG/2022/1147', 'ICT1222', 'DpICT'),
    (70, 40, 90, 88, NULL, 85, NULL, 84, 'TG/2022/1305', 'ICT1222', 'DpICT'),
    (40, 50, 40, 85, NULL, 87, NULL, 82, 'TG/2022/1188', 'ICT1222', 'DpICT'),
    (80, 100, 70, 80, NULL, 82, NULL, 83, 'TG/2022/1190', 'ICT1222', 'DpICT'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1345', 'ICT1222', 'DpICT'),
    (20, 25, 30, 35, NULL, 29, NULL, 30, 'TG/2021/1155', 'ICT121', 'DpICT'),  
    (88, 42, 85, 84, 87, 90, 93, 89, 'TG/2022/1122', 'ICT1233', 'DpICT'),
    (81, 80, 72, 08, 80, 78, 66, 83, 'TG/2022/1147', 'ICT1233', 'DpICT'),
    (85, 88, 34, 62, 56, 80, 52, 76, 'TG/2022/1305', 'ICT1233', 'DpICT'),
    (89, 90, 47, 86, 79, 91, 74, 61, 'TG/2022/1188', 'ICT1233', 'DpICT'),
    (34, 46, 83, 80, 65, 17, 18, 35, 'TG/2022/1190', 'ICT1233', 'DpICT'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1345', 'ICT1233', 'DpICT'),
    (20, 25, 30, 35, 28, 29, 31, 30, 'TG/2021/1155', 'ICT1233', 'DpICT'),  
    (70, 90, 39, NULL, 85, NULL, 92, 88, 'TG/2022/1122', 'ICT1242', 'DpICT'),
    (82, 88, 45, NULL, 30, NULL, 85, 84, 'TG/2022/1147', 'ICT1242', 'DpICT'),
    (14, 17, 86, NULL, 43, NULL, 88, 85, 'TG/2022/1305', 'ICT1242', 'DpICT'),
    (79, 93, 90, NULL, 38, NULL, 91, 90, 'TG/2022/1188', 'ICT1242', 'DpICT'),
    (65, 79, 87, NULL, 76, NULL, 87, 86, 'TG/2022/1190', 'ICT1242', 'DpICT'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1345', 'ICT1242', 'DpICT'), 
    (20, 25, 30, NULL, 28, NULL, 31, 30, 'TG/2021/1155', 'ICT1242', 'DpICT'),  
    (80, 50, 39, 86, 84, 90, 93, 87, 'TG/2022/1122', 'ICT1253', 'DpICT'),
    (80, 60, 65, 81, 79, 87, 89, 82, 'TG/2022/1147', 'ICT1253', 'DpICT'),
    (40, 80, 36, 92, 63, 82, 20, 55, 'TG/2022/1305', 'ICT1253', 'DpICT'),
    (10, 60, 91, 58, 75, 91, 12, 60, 'TG/2022/1188', 'ICT1253', 'DpICT'),
    (60, 90, 87, 30, 52, 79, 38, 86, 'TG/2022/1190', 'ICT1253', 'DpICT'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1345', 'ICT1253', 'DpICT'), 
    (20, 25, 30, 35, 28, 29, 31, 30, 'TG/2021/1155', 'ICT1253', 'DpICT');  
    
INSERT INTO Exam_Marks 
(quiz1, quiz2, quiz3, mid_practical, mid_theory, end_practical, end_theory, assessments, stu_id, course_code,  dep_id)
VALUES
    (88, 12, 85, NULL, 87, NULL, 91, 89, 'TG/2022/1122', 'TCS1212', 'DpICT'),
    (80, 40, 20, NULL, 55, NULL, 58, 33, 'TG/2022/1147', 'TCS1212', 'DpICT'),
    (82, 85, 83, NULL, 56, NULL, 79, 25, 'TG/2022/1305', 'TCS1212', 'DpICT'),
    (85, 07, 80, NULL, 19, NULL, 90, 88, 'TG/2022/1188', 'TCS1212', 'DpICT'),
    (20, 60, 40, NULL, 26, NULL, 37, 64, 'TG/2022/1190', 'TCS1212', 'DpICT'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1345', 'TCS1212', 'DpICT'), 
    (20, 25, 30, NULL, 28, NULL, 31, 30, 'TG/2021/1155', 'TCS1212', 'DpICT'); 


INSERT INTO Exam_Marks 
(quiz1, quiz2, quiz3, mid_practical, mid_theory, end_practical, end_theory, assessments, stu_id, course_code,  dep_id)
VALUES    

    (15, 60, 74, 78, 82, 85, 90, 86, 'TG/2022/1122', 'TMS1223', 'DpICT'),
    (30, 20, 79, 75, 80, 83, 87, 12, 'TG/2022/1147', 'TMS1223', 'DpICT'),
    (83, 06, 60, 77, 81, 45, 88, 74, 'TG/2022/1305', 'TMS1223', 'DpICT'),
    (57, 75, 52, 80, 83, 36, 89, 77, 'TG/2022/1188', 'TMS1223', 'DpICT'),
    (85, 53, 81, 76, 82, 14, 87, 83, 'TG/2022/1190', 'TMS1223', 'DpICT'),
    (NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'TG/2022/1345', 'TMS1223', 'DpICT'), 
    (20, 25, 30, 35, 28, 29, 31, 30, 'TG/2021/1155', 'TMS1223', 'DpICT');  


-- create CA_Marks and Final_marks views


CREATE VIEW CA_Marks AS
SELECT 
    stu_id AS student_id,
    course_code AS course_code,
    (quiz1 + quiz2 + quiz3 + mid_theory + mid_practical) AS total_ca_marks,
    CASE 
        WHEN (quiz1 + quiz2 + quiz3 + mid_theory + mid_practical) > 19.5 
        THEN 'CA_pass' 
        ELSE 'CA_fail' 
    END AS ca_status
FROM 
    Exam_Marks;









CREATE VIEW Final_Marks AS
SELECT 
    stu_id AS student_id,
    course_code AS course_code,
    (quiz1 + quiz2 + quiz3 + mid_theory + mid_practical + end_theory + end_practical) AS total_marks
FROM 
    Exam_Marks;