CREATE VIEW QuizMarks AS
SELECT 
    student_id,
    course_code,
    department_id,
    (GREATEST(quiz1, quiz2, quiz3) * 0.025 + 
     GREATEST(LEAST(quiz1, quiz2), LEAST(GREATEST(quiz1, quiz2), quiz3)) * 0.025) AS total_quiz_mark
FROM 
    Marks;