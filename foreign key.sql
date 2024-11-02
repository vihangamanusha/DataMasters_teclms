ALTER TABLE Marks (student_id) ADD FOREIGN KEY REFERENCES Student (Student_id);
ALTER TABLE Marks (course_code) ADD FOREIGN KEY REFERENCES Course_unit (Course_code);
ALTER TABLE Marks (medical_submission_id) ADD FOREIGN KEY REFERENCES Medical_submission (Submission_id);
