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

CREATE VIEW Student_CGPA AS
SELECT 
    student_id,
    AVG(grade_points) AS CGPA
FROM (
    SELECT 
        student_id,
        CASE 
            WHEN grade = 'A+' THEN 4.0
            WHEN grade = 'A' THEN 4.0
            WHEN grade = 'A-' THEN 3.7
            WHEN grade = 'B+' THEN 3.3
            WHEN grade = 'B' THEN 3.0
            WHEN grade = 'B-' THEN 2.7
            WHEN grade = 'C+' THEN 2.3
            WHEN grade = 'C' THEN 2.0
            WHEN grade = 'C-' THEN 1.7
            WHEN grade = 'D+' THEN 1.3
            WHEN grade = 'D' THEN 1.0
            WHEN grade = 'D-' THEN 0.7
            WHEN grade = 'E' THEN 0.0
            WHEN grade = 'F' THEN 0.0
            WHEN grade = 'MC' THEN 0.0
            ELSE NULL
        END AS grade_points
    FROM 
        Student_grades
    WHERE 
        grade IS NOT NULL  -- Exclude NULL grades for calculation
) AS grade_points_table
GROUP BY 
    student_id;
