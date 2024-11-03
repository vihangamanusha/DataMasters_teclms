CREATE VIEW QuizMarks AS
SELECT 
    student_id,
    course_code,
    dep_id,
    (GREATEST(quiz1, quiz2, quiz3) * 0.025 + 
     GREATEST(LEAST(quiz1, quiz2), LEAST(GREATEST(quiz1, quiz2), quiz3)) * 0.025) AS total_quiz_mark
FROM 
    Marks;


    -- View for CA_marks


    CREATE VIEW CA_Marks AS
SELECT 
    Marks.student_id,
    Marks.course_code,
    (
        (
            (GREATEST(quiz1, quiz2, quiz3) + 
             GREATEST(LEAST(quiz1, quiz2), LEAST(GREATEST(quiz1, quiz2), quiz3))) +  
            assessments +                        
            COALESCE(mid_practical, mid_theory)  
        ) / 10                           
    ) AS total_ca_marks,
    CASE 
        WHEN Student.status = 'suspend' THEN 'WH'
        WHEN Marks.medical_submission_id IS NOT NULL THEN 'MC'
        WHEN (
            (
                (GREATEST(quiz1, quiz2, quiz3) + 
                 GREATEST(LEAST(quiz1, quiz2), LEAST(GREATEST(quiz1, quiz2), quiz3))) +
                assessments +
                COALESCE(mid_practical, mid_theory)
            ) / 10
        ) >= 20 THEN 'Eligible'         
        ELSE 'Not Eligible'
    END AS eligibility_status
FROM 
    Marks  
JOIN 
    Student ON Marks.student_id = Student.student_id;



--Final marks view

CREATE VIEW Final_Marks AS
SELECT 
    Marks.student_id,
    Marks.course_code,
    (
        LEAST(CA_Marks.total_ca_marks, 100) +  -- Scale CA to a maximum of 100, then apply 40% weight
        Marks.end_theory * 0.3 +                      -- 30% weight for end theory
        Marks.end_practical * 0.3                     -- 30% weight for end practical
    ) AS final_exam_marks,
    CASE 
        WHEN Student.status = 'suspend' THEN 'WH'
        WHEN Marks.medical_submission_id IS NOT NULL THEN 'MC'
        WHEN Exam_eligibility_view.Exam_Eligibility = 'Eligible' THEN 'Eligible'
        ELSE 'Not Eligible'
    END AS final_status
FROM 
    Marks
JOIN 
    CA_Marks ON Marks.student_id = CA_Marks.student_id 
             AND Marks.course_code = CA_Marks.course_code
JOIN 
    Student ON Marks.student_id = Student.student_id
JOIN 
    Exam_eligibility_view ON Marks.student_id = Exam_eligibility_view.student_id 
                         AND Marks.course_code = Exam_eligibility_view.course_code;



