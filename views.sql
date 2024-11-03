--grade view

CREATE VIEW Student_grades AS
SELECT 
   exam_eligibility_view.student_id,
   exam_eligibility_view.course_code,
   final_marks.final_exam_marks,
CASE
        WHEN exam_eligibility_view.Exam_Eligibility = 'MC' THEN 'MC'        
        WHEN exam_eligibility_view.Exam_Eligibility = 'ELIGIBLE' THEN
   CASE
     WHEN final_marks.final_exam_marks>=90 THEN 'A+'
     WHEN final_marks.final_exam_marks>=85 THEN 'A'
     WHEN final_marks.final_exam_marks>=80 THEN 'A-'
     WHEN final_marks.final_exam_marks>=75 THEN 'B+'
     WHEN final_marks.final_exam_marks>=70 THEN 'B'
     WHEN final_marks.final_exam_marks>=65 THEN 'B-'
     WHEN final_marks.final_exam_marks>=60 THEN 'C+'
     WHEN final_marks.final_exam_marks>=55 THEN 'C'
     WHEN final_marks.final_exam_marks>=50 THEN 'C-'
     WHEN final_marks.final_exam_marks>=45 THEN 'D+'
     WHEN final_marks.final_exam_marks>=40 THEN 'D+'
     WHEN final_marks.final_exam_marks>=35 THEN 'D'
     WHEN final_marks.final_exam_marks>=30 THEN 'E'
     ELSE 'F'
     END
   ELSE NULL
END AS grade
FROM 
    exam_eligibility_view AS exam_eligibility_view
LEFT JOIN 
    final_marks AS final_marks 
ON 
    exam_eligibility_view.student_id = final_marks.student_id 
    AND exam_eligibility_view.course_code = final_marks.course_code;


--Create view student_cgpa

CREATE VIEW Student_SGPA AS
SELECT 
    student_grades.student_id,
    SUM(course_unit.credits) AS total_credit,
    SUM(CASE 
        WHEN student_grades.final_exam_marks IS NOT NULL AND student_grades.final_exam_marks != 'MC' 
        THEN 
            CASE 
                WHEN student_grades.final_exam_marks >= 90 THEN 4.0 * course_unit.credits
                WHEN student_grades.final_exam_marks >= 85 THEN 4.0 * course_unit.credits
                WHEN student_grades.final_exam_marks >= 80 THEN 3.7 * course_unit.credits
                WHEN student_grades.final_exam_marks >= 75 THEN 3.3 * course_unit.credits
                WHEN student_grades.final_exam_marks >= 70 THEN 3.0 * course_unit.credits
                WHEN student_grades.final_exam_marks >= 65 THEN 2.7 * course_unit.credits
                WHEN student_grades.final_exam_marks >= 60 THEN 2.3 * course_unit.credits
                WHEN student_grades.final_exam_marks >= 55 THEN 2.0 * course_unit.credits
                WHEN student_grades.final_exam_marks >= 50 THEN 1.7 * course_unit.credits
                WHEN student_grades.final_exam_marks >= 45 THEN 1.3 * course_unit.credits
                WHEN student_grades.final_exam_marks >= 40 THEN 1.0 * course_unit.credits
                WHEN student_grades.final_exam_marks >= 35 THEN 0.7 * course_unit.credits
                WHEN student_grades.final_exam_marks >= 30 THEN 0.0 * course_unit.credits
                ELSE 0.0
            END
        ELSE 0.0
    END) AS total_quality_points,
    CASE 
        WHEN SUM(course_unit.credits) > 0 THEN 
            SUM(CASE 
                WHEN student_grades.final_exam_marks IS NOT NULL AND student_grades.final_exam_marks != 'MC' 
                THEN 
                    CASE 
                        WHEN student_grades.final_exam_marks >= 90 THEN 4.0 * course_unit.credits
                        WHEN student_grades.final_exam_marks >= 85 THEN 4.0 * course_unit.credits
                        WHEN student_grades.final_exam_marks >= 80 THEN 3.7 * course_unit.credits
                        WHEN student_grades.final_exam_marks >= 75 THEN 3.3 * course_unit.credits
                        WHEN student_grades.final_exam_marks >= 70 THEN 3.0 * course_unit.credits
                        WHEN student_grades.final_exam_marks >= 65 THEN 2.7 * course_unit.credits
                        WHEN student_grades.final_exam_marks >= 60 THEN 2.3 * course_unit.credits
                        WHEN student_grades.final_exam_marks >= 55 THEN 2.0 * course_unit.credits
                        WHEN student_grades.final_exam_marks >= 50 THEN 1.7 * course_unit.credits
                        WHEN student_grades.final_exam_marks >= 45 THEN 1.3 * course_unit.credits
                        WHEN student_grades.final_exam_marks >= 40 THEN 1.0 * course_unit.credits
                        WHEN student_grades.final_exam_marks >= 35 THEN 0.7 * course_unit.credits
                        WHEN student_grades.final_exam_marks >= 30 THEN 0.0 * course_unit.credits
                        ELSE 0.0
                    END
                ELSE 0.0
            END) / SUM(course_unit.credits)
        ELSE NULL 
    END AS CGPA
FROM 
    student_grades AS student_grades
JOIN 
    course_unit AS course_unit ON student_grades.course_code = course_unit.course_code
WHERE 
    student_grades.final_exam_marks IS NOT NULL AND student_grades.final_exam_marks != 'MC'
GROUP BY 
    student_grades.student_id;
