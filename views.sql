--grade view

CREATE VIEW Student_grades AS
SELECT 
   final_marks.student_id,
   final_marks.course_code,
   final_marks.final_exam_marks,
   CASE
     WHEN final_exam_marks>=90 THEN 'A+'
     WHEN final_exam_marks>=85 THEN 'A'
     WHEN final_exam_marks>=80 THEN 'A-'
     WHEN final_exam_marks>=75 THEN 'B+'
     WHEN final_exam_marks>=70 THEN 'B'
     WHEN final_exam_marks>=65 THEN 'B-'
     WHEN final_exam_marks>=60 THEN 'C+'
     WHEN final_exam_marks>=55 THEN 'C'
     WHEN final_exam_marks>=50 THEN 'C-'
     WHEN final_exam_marks>=45 THEN 'D+'
     WHEN final_exam_marks>=40 THEN 'D+'
     WHEN final_exam_marks>=35 THEN 'D'
     WHEN final_exam_marks>=30 THEN 'E'
     WHEN final_exam_marks='MC' THEN 'MC'
     ELSE 'F'
   
   END AS grade
FROM 
    final_marks;
