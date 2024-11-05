

---------procedures-------------



CREATE PROCEDURE Final_mark(IN tg CHAR(15))
BEGIN
    SELECT *
    FROM Final_Marks
    WHERE student_id=tg;
END//




CREATE PROCEDURE Final_grade(IN tg CHAR(15))
BEGIN
    SELECT *
    FROM Student_grades
    WHERE student_id=tg;
END//

-----CALL Final_grade('TG/2022/1233')---

CREATE PROCEDURE Final_sgpa(IN tg CHAR(15))
BEGIN
    SELECT 
    student_id,SGPA
    FROM Student_SGPA
    WHERE student_id=tg;
END//


CREATE PROCEDURE Final_cgpa(IN tg CHAR(15))
BEGIN
    SELECT  
    student_id,CGPA
    FROM Student_CGPA
    WHERE student_id=tg;
END//
